# Prompt 1 · instalar y hacer el primer análisis

**Solo funciona si esta sesión de Claude Code está abierta DENTRO de la carpeta del Starter.**
Si vienes del Prompt 0 y no has reabierto, vuelve y hazlo.

Copia todo lo que hay entre las líneas y pégalo.

---

```
Vas a instalar y comprobar el Starter de TradingView paso a paso. Habla en
español, con frases cortas, y no pases de un paso al siguiente hasta que el
anterior esté bien.

REGLAS QUE NO SE ROMPEN
- Pídeme permiso ANTES de instalar nada.
- No salgas de esta carpeta: no crees ni borres nada fuera de ella.
- No me pidas nunca contraseñas, tokens ni claves. Este montaje no necesita
  ninguna.
- No crees alertas en TradingView ni dibujes nada en el gráfico.
- Si algo falla, dame el mensaje de error TAL CUAL y para. No improvises
  arreglos.

PASO 1 · Dónde estamos
Dime la ruta de esta carpeta y confirma que ves README.md, CLAUDE.md y
.mcp.json. Si no los ves, esta sesión no está en la carpeta correcta: dímelo y
para.

PASO 2 · Node.js
Comprueba si node está y dime la versión. Hace falta la 18 o superior.
Si no está o es antigua, dame el comando de winget para instalar la versión
LTS, pídeme permiso, e instálala solo si digo que sí. Después avísame de que
hay que cerrar la sesión y abrir otra para que Windows encuentre node.

PASO 3 · Descargar el conector
El conector NO viene dentro de este repositorio: se descarga de su origen.

Clónalo aquí dentro, fijando el commit exacto:

    git clone https://github.com/tradesdontlie/tradingview-mcp.git
    cd tradingview-mcp
    git checkout c05b8f5755ed8e64ea242de88ddbf46aa24d56a4

Después COMPRUEBA que el commit descargado es ese, leyéndolo del repositorio y
comparándolo carácter a carácter. Si no coincide, PARA y dímelo: significa que
te has traído otra versión.

Dime también qué licencia tiene, leyendo su archivo LICENSE. Debe decir MIT.

PASO 4 · Sus dependencias
Dentro de tradingview-mcp, pídeme permiso y ejecuta npm install.

Cuando termine, npm puede avisar de vulnerabilidades y sugerir un comando de
arreglo. NO lo ejecutes y avísame de que no debo ejecutarlo: cambia las piezas
internas del conector y puede dejarlo inservible.

PASO 5 · Registrar el conector
En la raíz de esta carpeta hay un archivo .mcp.json. Ábrelo y comprueba:
  a) que es un JSON VÁLIDO — intenta interpretarlo y dime si da error;
  b) que la ruta al servidor que aparece dentro existe de verdad ahora que ya
     has descargado el conector.

Si la ruta no existe o el archivo da error, corrígelo poniendo la ruta ABSOLUTA
y real del archivo src/server.js dentro de tradingview-mcp de este ordenador.
Las barras invertidas van DOBLES. Enséñame el archivo final.

Después avísame de que hay que CERRAR la sesión y abrir otra en esta misma
carpeta, porque Claude solo lee ese archivo al arrancar.

PASO 6 · TradingView
Comprueba si TradingView de escritorio está instalado y dime TODAS las
instalaciones que encuentres, cada una con su versión. Puede haber dos.
Si no está, dime de dónde descargarlo y para hasta que lo tenga.

PASO 7 · Arrancarlo en modo conexión
TradingView solo se deja leer si arranca de una forma concreta. Tenerlo abierto
NO basta.

Pídeme que lo cierre del todo, incluido el icono de al lado del reloj. Cuando
confirme, ejecuta el lanzador que hay en scripts\arrancar_tradingview.ps1 y
enséñame lo que dice. Debe acabar diciendo que el puerto 9222 está escuchando.

Si dice que el puerto no responde, NO insistas más de dos veces: dímelo y para.

PASO 8 · Comprobar la conexión
Mira si tienes disponibles las herramientas del conector de TradingView y dime
cuántas ves. Si no ves ninguna, es que no reabriste la sesión después del paso
5: dímelo y para.

Comprueba la conexión y dime EXACTAMENTE qué responde, sin interpretarlo.
Después dime qué símbolo y qué temporalidad hay abiertos.

PASO 9 · El primer análisis
Ahora lee el archivo ejercicio\EJERCICIO_1.md y guíame por él.

Aplica siempre las reglas de CLAUDE.md: etiqueta cada cifra con de dónde sale,
escribe FALTA donde no puedas leer algo, y no me des ninguna recomendación de
compra o venta.

PASO 10 · Resumen
Cuando terminemos, dime en cinco líneas:
  - qué ha quedado instalado y dónde;
  - el commit del conector que se ha fijado;
  - en qué símbolo y temporalidad se ha quedado el gráfico;
  - qué tengo que hacer cada vez que quiera usarlo (el orden exacto);
  - qué NO hace este Starter.
```

---

## Cada vez que quieras usarlo

Siempre en este orden. Si lo cambias, no funciona:

1. **Cierra TradingView del todo**, incluido el icono de al lado del reloj.
2. Ejecuta **`scripts\arrancar_tradingview.ps1`** y espera a «puerto 9222 escuchando».
3. Abre **Claude Code en esta carpeta**, siempre la misma.
4. Pídele que **compruebe la conexión** antes de analizar nada.

## Si algo falla

Mira [`solucion_problemas/PROBLEMAS.md`](solucion_problemas/PROBLEMAS.md). Están los fallos que más
pasan, cada uno con un texto que puedes pegar para que Claude lo diagnostique solo.

**Los tres que explican casi todos los demás:**

1. TradingView abierto pero **sin modo conexión** — hay que cerrarlo y usar el lanzador.
2. La sesión abierta en **otra carpeta** — el conector solo se carga aquí.
3. Claude Code abierto **antes** que TradingView — se abre después.
