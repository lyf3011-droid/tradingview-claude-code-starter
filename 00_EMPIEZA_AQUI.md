# Empieza aquí

Cinco minutos de lectura antes de tocar nada. Te ahorran una tarde.

---

## Qué es esto, en una frase

Un montaje para que **Claude lea tu gráfico de TradingView** y te cuente lo que ve, diciéndote de
dónde sale cada cifra.

## Qué NO es

- No es un bot. **No opera.**
- No da señales, ni precios objetivo, ni stops.
- No sabe si una empresa es buena: solo ve el gráfico.
- No toca tu bróker, tu dinero ni tus órdenes.
- **No es asesoramiento financiero.**

Si buscas algo que te diga qué comprar, esto no es eso, y no lo va a ser.

---

## Lo que necesitas, sin sorpresas

| | Cuesta |
|---|---|
| **Windows** | — · es lo único probado |
| **Claude con plan de pago** | **Sí.** La pestaña Code no está en el gratuito. Se paga a Anthropic, no a mí |
| **TradingView** | **No.** El plan gratuito basta para todo esto |
| **Node.js y Git** | No. Gratuitos |
| **El conector** | No. Gratuito y comunitario |
| **Este Starter** | No |

Te lo digo por delante para que no te lo encuentres a mitad de camino.

---

## Los tres pasos

1. Abre Claude Code en una carpeta normal de `Documentos`. **Fuera de la nube.**
2. Pega [`PROMPT_0_CLONAR.md`](PROMPT_0_CLONAR.md) → se descarga el Starter.
3. Reabre Claude Code **dentro** de la carpeta descargada y pega
   [`PROMPT_1_INSTALAR.md`](PROMPT_1_INSTALAR.md) → instala y hace el primer análisis.

El manual completo del Starter está en [`manual/`](manual/).

---

## Las tres cosas que más fallan

Apúntatelas ahora y te ahorras la mitad de los problemas:

**1 · TradingView abierto no es TradingView conectado.**
Si lo abres con doble clic en su icono, o se abre solo al iniciar sesión, **no está en modo
conexión**. Hay que cerrarlo del todo —incluido el icono de al lado del reloj— y abrirlo con el
lanzador de `scripts/`.

**2 · La sesión tiene que estar en esta carpeta.**
El archivo que registra el conector vive aquí. Si abres Claude Code en otro sitio, no hay
herramientas.

**3 · Primero TradingView, después Claude Code.**
Claude solo busca el conector al arrancar. Si lo abres antes, no lo encuentra.

---

## Cuánto tarda

**No lo sé, y prefiero decirlo.** En un ordenador que ya tenía Git y TradingView fueron 19 minutos.
En uno vacío nunca se ha medido, así que no me voy a inventar una cifra.

Si lo cronometras, me harías un favor diciéndomelo.

---

## Esto está en pruebas

Es la primera versión pública. Va a fallar en algún sitio.

Cuando pase, mira [`solucion_problemas/PROBLEMAS.md`](solucion_problemas/PROBLEMAS.md): cada fallo
trae un texto que puedes pegar para que Claude lo diagnostique solo.

Y si te atascas de verdad, escríbeme por Instagram
[@soyfrangs](https://instagram.com/soyfrangs) contándome **en qué paso** y **el mensaje de error tal
cual**. Eso me sirve para arreglarlo para el siguiente.

> **Nunca me mandes una captura del administrador de tareas ni una lista de procesos.** La línea de
> comandos de TradingView lleva dentro un token de tu cuenta.

---

## Y cuando lo tengas funcionando

Empieza por [`ejercicio/EJERCICIO_1.md`](ejercicio/EJERCICIO_1.md): 15 minutos con una empresa que
elijas tú, de principio a fin.

Después, [`prompts/`](prompts/) tiene cuatro para el día a día.
