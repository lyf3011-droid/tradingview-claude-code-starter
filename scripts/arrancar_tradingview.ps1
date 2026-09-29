# Arranca TradingView en modo conexion (puerto local 9222).
#
# No cierra nada a la fuerza: si TradingView ya esta abierto, pide cerrarlo a mano.
# No instala nada. No toca permisos. No pide contrasenas.
#
# Un mismo equipo puede tener DOS instalaciones de TradingView: la de la Microsoft
# Store y la de tradingview.com. NO se elige por numero de version: se prefiere la
# publicada por TradingView, se dice siempre cual se ha usado, y si el puerto no
# abre se nombra la otra.

Write-Host ""
Write-Host "Arrancar TradingView en modo conexion"
Write-Host "-------------------------------------"

$enMarcha = Get-Process -Name "TradingView" -ErrorAction SilentlyContinue
if ($enMarcha) {
    Write-Host ""
    Write-Host "TradingView ya esta abierto, pero seguramente SIN el modo conexion."
    Write-Host "Cierralo tu, con normalidad, guardando lo que tengas, y vuelve a ejecutar este archivo."
    Write-Host "Cierra tambien el icono de la bandeja del sistema, junto al reloj."
    Write-Host ""
    return
}

$exe = $null
$alternativas = @()

# Todas las instalaciones que de verdad tienen el ejecutable dentro.
$paquetes = @(Get-AppxPackage -Name "*TradingView*" |
              Where-Object { Test-Path (Join-Path $_.InstallLocation "TradingView.exe") })

if ($paquetes.Count -gt 0) {
    $preferidos = @($paquetes | Where-Object { $_.Publisher -like "*TradingView*" })
    if ($preferidos.Count -gt 0) { $elegido = $preferidos[0] } else { $elegido = $paquetes[0] }

    $exe = Join-Path $elegido.InstallLocation "TradingView.exe"
    $alternativas = @($paquetes | Where-Object { $_.PackageFullName -ne $elegido.PackageFullName })

    if ($paquetes.Count -gt 1) {
        Write-Host ""
        Write-Host "Aviso: en este equipo hay $($paquetes.Count) instalaciones de TradingView."
        Write-Host "Se va a usar la de: $($elegido.Name)"
    }
}

# Por si existe una instalacion normal, fuera de WindowsApps.
if (-not $exe) {
    foreach ($r in @("$env:LOCALAPPDATA\TradingView\TradingView.exe",
                     "$env:ProgramFiles\TradingView\TradingView.exe")) {
        if (Test-Path $r) { $exe = $r; break }
    }
}

if (-not $exe) {
    Write-Host ""
    Write-Host "No encuentro TradingView Desktop en este equipo."
    Write-Host "Instalalo primero desde https://www.tradingview.com/desktop/ y vuelve a ejecutar este archivo."
    Write-Host ""
    return
}

Write-Host "Encontrado: $exe"
try {
    Start-Process $exe -ArgumentList "--remote-debugging-port=9222" -ErrorAction Stop
} catch {
    Write-Host ""
    Write-Host "NO se ha podido arrancar TradingView. Error tal cual:"
    Write-Host $_.Exception.Message
    Write-Host ""
    Write-Host "Copia ese mensaje entero. NO toques permisos de carpetas por tu cuenta:"
    Write-Host "esto no se arregla asi. Mira solucion_problemas\PROBLEMAS.md."
    return
}

$p = $null
foreach ($intento in 1..15) {
    Start-Sleep -Seconds 1
    $p = Get-NetTCPConnection -LocalPort 9222 -State Listen -ErrorAction SilentlyContinue
    if ($p) { Write-Host "Puerto listo en $intento segundos."; break }
}

if ($p) {
    Write-Host ""
    Write-Host "LISTO. El puerto 9222 esta escuchando: TradingView arranco en modo conexion."
    Write-Host "Ahora abre Claude Code EN LA CARPETA DEL STARTER y pidele que compruebe la conexion."
} else {
    Write-Host ""
    Write-Host "TradingView se ha abierto, pero el puerto 9222 no responde tras 15 segundos."
    Write-Host "Vuelve a ejecutar este archivo. Si falla dos veces seguidas, para."
    if ($alternativas.Count -gt 0) {
        Write-Host ""
        Write-Host "Ojo: hay otra instalacion de TradingView en este equipo:"
        foreach ($a in $alternativas) { Write-Host "  $($a.Name)" }
        Write-Host "Cierra TradingView del todo. Puede que haya que usar esa otra."
    }
}
Write-Host ""
