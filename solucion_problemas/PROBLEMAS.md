# Cuando algo falla

Busca tu síntoma, haz la comprobación segura y, si no se arregla, **pega el prompt tal cual** en tu
sesión de Claude Code.

**Todos los prompts de aquí son de solo lectura:** ninguno instala, borra, crea alertas ni toca tus
archivos.

> **Tres fallos explican casi todos los demás:** TradingView abierto pero **sin** modo conexión ·
> la sesión abierta en **otra carpeta** · Claude Code abierto **antes** que TradingView.
> Son los números 1, 2 y 3.

---

## 1 · La conexión sale inactiva

| | |
|---|---|
| **Síntoma** | Pides comprobar la conexión y dice que no la encuentra |
| **Causa** | TradingView está abierto **pero no en modo conexión**. Pasa siempre que se abre con doble clic o se abre solo al iniciar sesión desde el navegador |
| **Antes del prompt** | Ciérralo **del todo**, incluido el icono de al lado del reloj. Ábrelo con `scripts\arrancar_tradingview.ps1` y espera a leer «el puerto 9222 está escuchando» |

```
Comprueba el estado de la conexión con TradingView y dime exactamente qué te
responde, sin interpretarlo. No cambies nada del gráfico.
```

**Esperado:** conexión activa, con el símbolo y la temporalidad que tienes abiertos.

---

## 2 · Claude no encuentra las herramientas

| | |
|---|---|
| **Síntoma** | Dice que no tiene herramientas de TradingView |
| **Causa** | La sesión se abrió **en otra carpeta**, o no se reabrió después de crear el `.mcp.json` |
| **Antes del prompt** | Cierra la sesión y abre una **nueva** en la carpeta del Starter |

```
Dime la ruta de la carpeta en la que estás trabajando y si ves en ella un
archivo llamado .mcp.json.

Comprueba DOS cosas de ese archivo:
  a) que es un JSON válido: intenta interpretarlo y dime si da error y en qué
     línea. El fallo más común es una sola barra invertida donde hacen falta dos;
  b) que la ruta que aparece dentro existe de verdad en este equipo.

Dime también qué herramientas de TradingView tienes disponibles. No modifiques
nada.
```

**Esperado:** la ruta correcta, el archivo válido, la ruta de dentro existiendo, y las herramientas.

> **Esto pilla el fallo más traicionero de todos:** un `.mcp.json` perfecto por fuera que apunta a
> una carpeta que no existe. Claude simplemente no ve herramientas y no dice por qué.

---

## 3 · Al arrancar no aparece ninguna herramienta

| | |
|---|---|
| **Síntoma** | Abres la sesión y al principio no hay nada del conector |
| **Causa** | Tarda unos segundos. También pasa si abriste Claude Code **antes** que TradingView |
| **Antes del prompt** | Espera diez segundos. Si sigue igual, cierra la sesión, comprueba que TradingView está en modo conexión, y ábrela otra vez |

```
¿Tienes ya disponibles las herramientas del conector de TradingView? Dime
cuántas ves. Si no ves ninguna, dímelo y no intentes arreglarlo.
```

---

## 4 · `claude --version` dice que no se reconoce

**No es un fallo.** Usas la aplicación de escritorio, donde ese comando no existe. La app y el
comando de terminal son **dos instalaciones distintas** de la misma herramienta.

**Si ves la pestaña Code, lo tienes.** No hay nada que diagnosticar.

---

## 5 · `node` o `git` no se reconocen, y acabas de instalarlos

| | |
|---|---|
| **Causa** | Windows no ha recargado las rutas |
| **Antes del prompt** | **Cierra la sesión y ábrela otra vez.** En serio: es eso |

```
Comprueba si node y git están disponibles en este equipo y dime la versión de
cada uno. Si alguno no está, dímelo y NO lo instales.
```

---

## 6 · Dice BATS o Cboe One y tu gráfico pone NASDAQ

**No es un fallo, y no depende del plan.** Pasa igual con el gratuito y con el de pago: es el
conector, que nombra algunos símbolos de otra forma.

**Manda el encabezado del gráfico.**

```
Dime qué bolsa lees tú para este símbolo y compárala con la que aparece en el
encabezado del gráfico. Si no coinciden, dilo expresamente y usa la del
encabezado.
```

**Cuándo preocuparse:** si los **precios** tampoco coinciden. Eso ya no es el nombre.

---

## 7 · Dice que ha cambiado el símbolo y el gráfico sigue igual

| | |
|---|---|
| **Causa** | **Fallo conocido.** La herramienta puede confirmar un cambio que no ha ocurrido, o cambiar a una bolsa distinta de la que pediste |

```
Vuelve a leer el estado del gráfico y dime qué símbolo hay AHORA.

Y después pídele un precio a ese símbolo. Si no devuelve precio, el símbolo no
ha cargado de verdad, aunque el estado diga que sí.

Si no es el que te pedí, dímelo claramente y NO me des ningún dato de ese
activo.
```

> **Ojo:** leer el estado **no basta**. Está comprobado que el estado confirma símbolos que no
> existen. Lo único que lo detecta es **pedir un precio**.

**Y una cosa más:** cambiar el símbolo puede cambiar **la temporalidad** sin avisar, y no siempre lo
hace. Compruébala también después de cada cambio.

---

## 8 · La captura de pantalla se queda colgada

| | |
|---|---|
| **Síntoma** | Pides una captura y la sesión se queda esperando mucho rato |
| **Causa** | La herramienta de captura puede no responder nunca. Suele pasar tras varios cambios de símbolo seguidos |
| **Qué hacer** | **No repitas la captura.** Cierra TradingView del todo y vuelve a arrancarlo con el lanzador |

```
No pidas más capturas. Comprueba si la conexión sigue viva y dime qué símbolo y
temporalidad hay abiertos. Si la conexión no responde, dímelo y no intentes
reconectar.
```

---

## Cuando nada de esto funciona

Escríbeme por Instagram **[@soyfrangs](https://instagram.com/soyfrangs)** con:

- el **mensaje de error tal cual**,
- **en qué paso** estabas,
- y qué habías probado ya.

> ## ⚠️ Aviso de seguridad
>
> **Nunca me mandes capturas del administrador de tareas ni listados de procesos.**
>
> Cuando TradingView se abre desde el navegador, su línea de comandos lleva dentro un token de tu
> cuenta: estarías mandándome una credencial tuya.
>
> El mensaje de error, sí. Los procesos, no.

---

*El Starter trae las 8 incidencias que más pasan. El manual completo trae 20, cada una con su
prompt de diagnóstico.*
