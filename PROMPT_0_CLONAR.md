# Prompt 0 · traerte el Starter

**Antes de pegar esto:**

1. Abre la aplicación de Claude y comprueba que tienes la pestaña **Code**.
   Si no la ves, necesitas un plan de pago. No sigas sin eso.
2. Abre **Code** en una carpeta normal de tu ordenador, por ejemplo `Documentos`.
   **Fuera de OneDrive, Dropbox o Google Drive.** Si no, la instalación fallará más adelante.

Ahora copia todo lo que hay entre las líneas y pégalo en Claude Code.

---

```
Vas a traerte a este ordenador un repositorio público de GitHub y comprobar que
ha llegado entero. Nada más: en este paso NO instalas el conector, NO tocas
TradingView y NO configuras nada.

Háblame en español y con frases cortas. Ve paso a paso y no sigas al siguiente
hasta que el anterior esté bien.

PASO 1 · Dónde estoy
Dime la ruta exacta de la carpeta en la que estamos trabajando. Comprueba dos
cosas y avísame si alguna falla:
  a) que NO está dentro de OneDrive, Dropbox, Google Drive, iCloud ni ninguna
     carpeta que se sincronice con la nube;
  b) que la ruta es corta: menos de 80 caracteres.
Si alguna falla, dime a qué carpeta debería cambiarme y PARA. No sigas.

PASO 2 · ¿Tengo Git?
Comprueba si git está disponible y dime su versión.
Si NO está: dime exactamente el comando para instalarlo con winget, pídeme
permiso, y solo instálalo si te digo que sí. Cuando termine, avísame de que
tengo que CERRAR esta sesión y abrir una nueva, porque si no, Windows no
encuentra git todavía.

PASO 3 · Traer el Starter
Descarga el repositorio público:

    git clone https://github.com/lyf3011-droid/tradingview-claude-code-starter.git

No hace falta cuenta de GitHub: es público. Si te pide usuario o contraseña,
algo va mal: para y dímelo.

PASO 4 · Comprobar que ha llegado entero
Entra a mirar la carpeta descargada y dime, uno por uno, si están:
    README.md
    CLAUDE.md
    .mcp.json
    PROMPT_1_INSTALAR.md
    la carpeta proyecto
    la carpeta prompts
    la carpeta ejercicio
    la carpeta solucion_problemas
    la carpeta scripts
    la carpeta manual
    la carpeta .claude con una skill dentro
Si falta alguno, dime cuál y PARA.

Comprueba además que NO existe una carpeta llamada tradingview-mcp. No debe
existir todavía: se descarga en el paso siguiente. Si existiera, dímelo.

PASO 5 · Qué hago ahora
Cuando todo esté bien, dime EXACTAMENTE esto y nada más:

  1. la ruta completa de la carpeta que se acaba de descargar;
  2. que tengo que CERRAR esta sesión de Claude Code;
  3. que tengo que abrir una sesión NUEVA dentro de esa carpeta;
  4. que una vez dentro, abra PROMPT_1_INSTALAR.md y pegue lo que hay ahí.

Explícame por qué hace falta reabrir: el archivo que conecta TradingView vive
en esa carpeta, y Claude solo lo lee al arrancar. Si no reabres ahí dentro, no
verá el conector y nada funcionará.

REGLAS PARA TODO ESTE PASO
- No instales nada sin pedirme permiso primero.
- No borres ni muevas ningún archivo mío.
- No crees archivos fuera de la carpeta que descargues.
- Si algo falla, dime el mensaje de error tal cual, sin interpretarlo, y para.
```

---

## Si algo va mal aquí

| Lo que ves | Qué pasa |
|---|---|
| «git no se reconoce» después de instalarlo | Windows no ha recargado las rutas. **Cierra la sesión y abre otra.** |
| Te pide usuario y contraseña de GitHub | La dirección está mal escrita. El repositorio es público y no pide nada |
| «destination path already exists» | Ya lo descargaste antes. Usa esa carpeta o borra la anterior |
| Estás dentro de OneDrive | Muévete a `Documentos` y empieza de nuevo. El conector son miles de archivos pequeños y la sincronización lo rompe |

**Siguiente:** [`PROMPT_1_INSTALAR.md`](PROMPT_1_INSTALAR.md) — pero solo desde una sesión abierta
**dentro** de la carpeta descargada.
