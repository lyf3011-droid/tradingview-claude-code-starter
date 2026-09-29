# TradingView + Claude Code · Starter

**Conecta Claude Code con tu TradingView de escritorio y pídele que lea tu gráfico.**

No es un bot. No opera, no da señales y no toca tu dinero. Lee lo que hay en pantalla —precio,
tendencia, soportes, resistencias, volumen— y te lo cuenta **etiquetando de dónde sale cada cifra**,
para que puedas comprobarla tú.

Gratis, en tu ordenador, sin registro.

---

## Qué vas a conseguir

Cuando termines, podrás escribirle a Claude cosas como:

> «Dime en qué símbolo y temporalidad está el gráfico, dónde cotiza ahora y qué soportes y
> resistencias tiene en semanal. Etiqueta cada cifra con de dónde sale.»

Y recibir una respuesta con los niveles, sus fechas y la advertencia de lo que **no** se puede
sostener con los datos del gráfico.

---

## Antes de empezar

| Necesitas | Detalle |
|---|---|
| **Windows** | Es lo único probado. Mac y Linux, todavía no |
| **Claude con plan de pago** | La pestaña **Code** no está en el plan gratuito. Se paga a Anthropic |
| **TradingView de escritorio** | El plan **gratuito basta** para este recorrido |
| **Git** | Si no lo tienes, el Prompt 0 te lo dice y lo instalas con un clic |

No hace falta saber programar. No hace falta cuenta de GitHub para clonar esto.

---

## Cómo se instala, en dos pegadas

### 1 · Abre Claude Code en una carpeta normal

Por ejemplo `Documentos`. **Fuera de OneDrive, Dropbox o Google Drive.**

### 2 · Pega el Prompt 0

Está en [`PROMPT_0_CLONAR.md`](PROMPT_0_CLONAR.md). Comprueba que tienes Git y se trae este
repositorio a tu ordenador.

### 3 · Vuelve a abrir Claude Code, ya dentro de la carpeta descargada

Este paso es obligatorio: el archivo que conecta TradingView vive en esa carpeta y Claude solo lo
lee al arrancar.

### 4 · Pega el Prompt 1

Está en [`PROMPT_1_INSTALAR.md`](PROMPT_1_INSTALAR.md). Instala el conector, lo configura, comprueba
TradingView y te lleva del primer análisis.

Si prefieres leerlo antes de tocar nada, empieza por
[`00_EMPIEZA_AQUI.md`](00_EMPIEZA_AQUI.md) o por el manual en [`manual/`](manual/).

---

## Qué hay aquí dentro

| Carpeta | Qué es |
|---|---|
| `proyecto/` | Tu sitio de trabajo: reglas, plantilla de ficha y dónde se guardan tus fichas |
| `prompts/` | Cuatro prompts listos para usar |
| `ejercicio/` | Un ejercicio guiado de 15 minutos con tu primera empresa |
| `solucion_problemas/` | Los fallos que más pasan, con su diagnóstico |
| `scripts/` | El lanzador de TradingView y el comprobador de instalación |
| `manual/` | La guía del Starter en PDF |
| `.claude/skills/` | Una skill que da formato a tu ficha |

---

## Lo que este Starter hace y lo que no

| Sí | No |
|---|---|
| Lee el gráfico que tengas abierto | Decir si comprar o vender |
| Te da precio, tendencia, soportes y resistencias | Dar precio objetivo o stop |
| Etiqueta cada cifra con su origen | Saber si una empresa es buena |
| Dice **FALTA** cuando no puede leer algo | Tocar tu bróker, tu dinero o tus órdenes |
| Avisa si el gráfico dice una bolsa y el conector dice otra | Crear alertas sin que se lo pidas |

**Esto no es asesoramiento financiero.** Es una herramienta de lectura. Las decisiones son tuyas.

---

## Aviso importante sobre el conector

El puente entre Claude y TradingView es
[`tradesdontlie/tradingview-mcp`](https://github.com/tradesdontlie/tradingview-mcp): un proyecto
**comunitario, experimental y no oficial**, con licencia MIT. **No es mío ni de TradingView.**

Su propio aviso dice que no está afiliado ni respaldado por TradingView, y que **cada cual es
responsable de que su uso cumpla las condiciones de TradingView**. Puede dejar de funcionar cuando
TradingView cambie algo.

El Starter **no incluye una copia** del conector: te lo descarga desde su repositorio original, en
un commit fijo y comprobando la huella. Detalles en
[`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md).

---

## Seguridad, en dos líneas

Todo ocurre en tu ordenador. Este Starter no envía nada a ningún servidor mío: no hay ninguno.

**Nunca pegues en un chat un listado de procesos ni una captura del administrador de tareas.**
Cuando TradingView se abre desde el navegador, su línea de comandos lleva dentro un token de tu
cuenta: estarías compartiendo una credencial sin querer.

---

## Esto es la versión de inicio

El Starter es el recorrido básico y funciona solo. Lo que **no** trae:

- la batería completa de prompts;
- el método de niveles con sus criterios de verificación;
- las fichas semanales automatizadas;
- el manual extendido y los vídeos;
- soporte.

Está en [`DIFERENCIAS.md`](DIFERENCIAS.md), con lo que incluye cada cosa.

¿Quieres el recorrido completo, que te lo instale, que lo adapte a tu forma de analizar, o
formación? **Escríbeme por Instagram: [@soyfrangs](https://instagram.com/soyfrangs).**

---

## Licencia

Código y scripts: [MIT](LICENSE). El manual, los prompts y los textos son © Fran G. y se comparten
para uso personal: puedes usarlos y adaptarlos para ti, no revenderlos ni redistribuirlos como
producto propio.

Marcas: TradingView® es de TradingView Inc. y Claude® de Anthropic PBC. Este proyecto no está
afiliado ni respaldado por ninguna de las dos.
