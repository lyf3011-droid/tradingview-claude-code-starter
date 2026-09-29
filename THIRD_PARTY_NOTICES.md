# Software de terceros

Este Starter **no incluye ninguna copia** de software de terceros. Los descarga o los usa desde su
origen oficial. Aquí queda por escrito qué usa, de dónde viene y con qué licencia.

---

## 1 · El conector: `tradingview-mcp`

Es el puente entre Claude Code y tu TradingView de escritorio. **Sin él nada de esto funciona.**

| | |
|---|---|
| **Repositorio** | https://github.com/tradesdontlie/tradingview-mcp |
| **Autor** | tradesdontlie |
| **Licencia** | **MIT** — comprobada en su archivo `LICENSE` el 30 de septiembre de 2026 |
| **Commit fijado** | `c05b8f5755ed8e64ea242de88ddbf46aa24d56a4` |
| **Fecha del commit** | 28 de julio de 2026 |
| **Rama** | `main` |

### Por qué se fija un commit

Porque un proyecto en desarrollo puede cambiar de un día para otro y romper el recorrido. Fijando
el commit, **todo el mundo instala exactamente lo mismo** y, si algo falla, falla igual para todos
y se puede diagnosticar.

`PROMPT_1_INSTALAR.md` descarga ese commit exacto y **comprueba que el identificador coincide**
antes de seguir. Si no coincide, se para.

### Su propio aviso, que conviene leer

Copiado de su licencia y su README:

> No está afiliado, respaldado ni asociado con TradingView Inc. Los usuarios son los únicos
> responsables de asegurarse de que su uso cumple las condiciones de uso de TradingView y la
> legislación aplicable.

Y sobre el riesgo:

> Úsalo bajo tu propia responsabilidad. Si no estás seguro de que tu uso previsto cumple las
> condiciones de TradingView, no uses esta herramienta.

**Eso se mantiene tal cual.** No lo suavizo ni lo escondo: es un proyecto comunitario y
experimental, y quien lo instala debe saberlo.

### Un detalle que encontré al revisarlo

Su archivo `LICENSE` dice **MIT** con claridad, pero su `package.json` **no lleva el campo
`license`**. No es un problema legal —manda el archivo `LICENSE`—, pero queda anotado porque una
herramienta automática de licencias no lo detectaría.

### Qué instala a su vez

El conector tiene **2 dependencias directas**, que se descargan con `npm install` desde el registro
público de npm al instalarlo. Ni este Starter ni yo las redistribuimos.

> Al terminar la instalación, npm puede avisar de vulnerabilidades en esas piezas internas y
> sugerirte un comando de arreglo. **No lo ejecutes.** Cambia las piezas internas del conector y
> puede dejarlo inservible. El aviso es sobre el conector, no sobre tu ordenador.

---

## 2 · Node.js

| | |
|---|---|
| **Para qué** | Es el motor que ejecuta el conector |
| **Origen** | https://nodejs.org — versión LTS |
| **Licencia** | MIT |

No se incluye. Se instala desde su web oficial, o con `winget`.

---

## 3 · Git

| | |
|---|---|
| **Para qué** | Descargar este Starter y el conector |
| **Origen** | https://git-scm.com |
| **Licencia** | GPL-2.0 |

No se incluye. Se instala desde su web oficial, o con `winget`.

---

## 4 · TradingView Desktop

| | |
|---|---|
| **Para qué** | Es la aplicación cuyo gráfico se lee |
| **Origen** | https://www.tradingview.com/desktop/ o Microsoft Store |
| **Licencia** | Software propietario de TradingView Inc. |

**No se incluye, no se modifica y no se redistribuye.** Se usa la aplicación que tú instalas con tu
cuenta. El conector se limita a leerla desde tu propio ordenador.

El plan gratuito de TradingView basta para el recorrido de este Starter. Para comparar planes, su
propia página.

---

## 5 · Claude Code

| | |
|---|---|
| **Para qué** | Es el agente que ejecuta todo esto |
| **Origen** | Anthropic PBC |
| **Licencia** | Producto propietario, con su plan de suscripción |

No se incluye ni se revende. Necesitas tu propia cuenta **con plan de pago**: la pestaña Code no
está en el plan gratuito.

---

## Marcas

- **TradingView®** es marca de TradingView Inc.
- **Claude®** es marca de Anthropic PBC.
- **GitHub®** es marca de GitHub, Inc.

Este proyecto **no está afiliado, respaldado ni asociado** con ninguna de ellas. Se nombran solo
para identificar con qué funciona.

---

## Si encuentras un problema de licencia

Si crees que algo de aquí infringe una licencia o una marca, dímelo por Instagram
[@soyfrangs](https://instagram.com/soyfrangs) y lo corrijo o lo retiro. No hace falta abogado de
por medio.

*Revisado el 30 de septiembre de 2026.*
