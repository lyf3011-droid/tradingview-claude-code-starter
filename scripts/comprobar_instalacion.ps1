# Comprueba si el Starter esta bien montado.
#
# SOLO MIRA. No instala, no borra, no arranca nada y no toca la red.
# No muestra listados de procesos ni lineas de comandos: dentro va el token de
# la cuenta de TradingView cuando se abre desde el navegador.

$raiz = Split-Path -Parent $PSScriptRoot
$fallos = 0

function Resultado($ok, $texto, $detalle = "") {
    $marca = if ($ok) { "[OK]  " } else { "[FALTA]"; }
    Write-Host "$marca $texto $detalle"
    if (-not $ok) { $script:fallos++ }
}

Write-Host ""
Write-Host "COMPROBACION DEL STARTER"
Write-Host "------------------------"
Write-Host "Carpeta: $raiz"
Write-Host ""

# 1 · la carpeta no puede estar sincronizada con la nube
$nube = @("OneDrive", "Dropbox", "Google Drive", "iCloud")
$enNube = $nube | Where-Object { $raiz -like "*$_*" }
Resultado (-not $enNube) "La carpeta NO esta en la nube" $(if ($enNube) { "-> esta dentro de $enNube. Muevela a Documentos" })

# 2 · archivos del Starter
foreach ($f in @("CLAUDE.md", ".mcp.json", "README.md", "proyecto", "prompts",
                 "ejercicio", "solucion_problemas", "scripts", ".claude")) {
    Resultado (Test-Path (Join-Path $raiz $f)) $f
}

# 3 · herramientas
$node = try { node --version 2>$null } catch { $null }
Resultado ([bool]$node) "Node.js" $(if ($node) { $node } else { "-> instalalo desde nodejs.org (LTS)" })
$git = try { (git --version 2>$null) -replace 'git version ', '' } catch { $null }
Resultado ([bool]$git) "Git" $(if ($git) { $git } else { "-> instalalo desde git-scm.com" })

# 4 · el conector
$conector = Join-Path $raiz "tradingview-mcp\src\server.js"
Resultado (Test-Path $conector) "Conector descargado" $(if (-not (Test-Path $conector)) { "-> ejecuta el Prompt 1" })

# 5 · el .mcp.json, que es JSON valido Y apunta a algo que existe
$mcp = Join-Path $raiz ".mcp.json"
if (Test-Path $mcp) {
    try {
        $cfg = Get-Content $mcp -Raw | ConvertFrom-Json
        Resultado $true ".mcp.json es JSON valido"
        $ruta = $cfg.mcpServers.tradingview.args[0]
        $abs = if ([System.IO.Path]::IsPathRooted($ruta)) { $ruta } else { Join-Path $raiz $ruta }
        Resultado (Test-Path $abs) "La ruta del .mcp.json existe" "-> $ruta"
    } catch {
        Resultado $false ".mcp.json es JSON valido" "-> $($_.Exception.Message)"
        Write-Host "        El fallo mas comun: una barra invertida donde hacen falta dos."
    }
}

# 6 · TradingView
$tv = @(Get-AppxPackage -Name "*TradingView*" -ErrorAction SilentlyContinue |
        Where-Object { Test-Path (Join-Path $_.InstallLocation "TradingView.exe") })
Resultado ($tv.Count -gt 0) "TradingView Desktop" "-> $($tv.Count) instalacion(es)"
foreach ($t in $tv) { Write-Host "        $($t.Name) $($t.Version)" }

# 7 · el puerto (sin decir quien lo ocupa: eso no hace falta aqui)
$puerto = Get-NetTCPConnection -LocalPort 9222 -State Listen -ErrorAction SilentlyContinue
if ($puerto) {
    Write-Host "[OK]   Puerto 9222 escuchando: TradingView esta en modo conexion"
} else {
    Write-Host "[AVISO] Puerto 9222 cerrado -> ejecuta scripts\arrancar_tradingview.ps1"
}

Write-Host ""
if ($fallos -eq 0) {
    Write-Host "TODO EN ORDEN. Abre Claude Code en esta carpeta y comprueba la conexion."
} else {
    Write-Host "$fallos cosa(s) por resolver. Mira solucion_problemas\PROBLEMAS.md."
}
Write-Host ""
