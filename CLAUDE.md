# Reglas de este proyecto

## Qué hacemos aquí

Estudiar empresas con el gráfico de TradingView y dejar fichas que se puedan comprobar.

## Idioma

Responder siempre en español, con frases cortas.

## Cómo está montada esta carpeta

Esta carpeta es a la vez el sitio de trabajo y donde vive el conector. **Las sesiones de Claude Code
se abren aquí**, porque el `.mcp.json` que registra el conector está en esta raíz. Si se abre en
otro sitio, el conector no se carga y no hay herramientas.

```
.
├── .mcp.json                registra el conector
├── CLAUDE.md                este archivo
├── README.md
├── proyecto/                el sitio de trabajo: plantilla y fichas
├── prompts/                 prompts listos para usar
├── ejercicio/               el ejercicio guiado
├── solucion_problemas/      qué hacer cuando algo falla
├── scripts/                 el lanzador y el comprobador
├── manual/                  la guía en PDF
├── .claude/skills/          la skill de ficha básica
└── tradingview-mcp/         el conector (se descarga, no viene incluido)
```

---

## Reglas que Claude debe cumplir siempre

### 1 · No inventar

Si un dato no se puede leer del gráfico, escribir **FALTA** y decir qué haría falta para tenerlo.
Nunca rellenar un hueco con una estimación presentada como dato.

### 2 · Etiquetar cada afirmación

- **[DATO]** si se lee directamente del gráfico.
- **[CÁLCULO]** si es una operación, **con la operación a la vista**.
- **[INTERPRETACIÓN]** si es una lectura, una opinión o una conclusión.

Sin etiqueta no se escribe ninguna cifra.

### 3 · Confirmar siempre símbolo y temporalidad

Antes de dar ningún dato, leer el estado del gráfico y decir qué símbolo y qué temporalidad hay
abiertos. Y después de cualquier cambio, **volver a leerlo y decir en qué ha quedado**.

Dos avisos concretos, comprobados:

- Las herramientas del conector pueden **nombrar una bolsa distinta** de la que muestra el gráfico:
  BATS o Cboe One donde el gráfico pone NASDAQ. **Manda el gráfico**, y hay que avisar de la
  discrepancia siempre que la haya.
- **Cambiar el símbolo puede cambiar la temporalidad sin avisar**, y no siempre lo hace. Por eso se
  comprueba cada vez, no de vez en cuando.

### 4 · Distinguir la vela en curso

Si la semana está abierta, decirlo, y **no usarla** para fijar máximos, mínimos ni contactos de un
nivel. Los niveles salen de velas cerradas.

Y leer siempre velas de sobra hacia atrás: unas cuantas más de las del periodo que se analiza. Con
ese margen el resultado no depende de cuántas velas se hayan leído.

### 5 · Soportes y resistencias: solo con pruebas

Un nivel solo se escribe si tiene **al menos dos contactos**, y **cada contacto va con su fecha y su
precio**. Sin esas dos cosas, no se escribe el nivel: se dice que no se puede verificar con la
información disponible.

Además:

- Un nivel a más del **20 %** del precio actual es histórico, no operativo, y se dice.
- Un nivel apoyado en la mecha de una sola vela es débil, y también se dice.

> *Esta versión del Starter pide dos contactos fechados. El método completo añade un criterio de
> verificación de cada contacto que descarta los que parecen niveles y no lo son. Va en el producto
> completo.*

### 6 · Parar ante una rareza

Si un precio, un volumen o una fecha no encajan con lo que se sabe de la empresa, **decirlo antes de
seguir analizando**, en vez de darlo por bueno.

Callarse una anomalía es el peor fallo posible aquí.

### 7 · Nada de recomendaciones

No decir si comprar, vender, entrar o salir. No dar precios objetivo ni stops. No opinar sobre si
una empresa está cara o barata.

**Esto es estudio, no asesoramiento.**

### 8 · No tocar el gráfico más de lo necesario

Cambiar de símbolo o temporalidad **solo para leer**, avisando antes, y dejarlo como estaba al
terminar. **No crear alertas ni dibujos** sin permiso expreso del usuario.

### 9 · Nunca marcar algo como comprobado por el usuario

Que Claude lo haya leído del gráfico **no** es que el usuario lo haya comprobado. Son dos estados
distintos y no se mezclan. Solo el usuario puede decir que ha comprobado algo.

### 10 · Guardar cada ficha

En `proyecto/fichas/`, con el nombre de la empresa y la fecha.

---

## Aviso de seguridad

Cuando TradingView se abre desde el navegador al iniciar sesión, **su línea de comandos lleva un
token de la cuenta**.

No pedir ni copiar listados de procesos ni capturas del administrador de tareas: van credenciales
dentro.

---

## Lo que este proyecto no hace

Brókers, órdenes, cartera, fiscalidad, señales y automatizaciones. Nada de eso.
