# Ejercicio 1 · tu primera ficha

**15 minutos.** Una empresa que elijas tú, de principio a fin.

El objetivo no es acertar nada. Es que veas **cómo se comprueba** lo que te dice.

---

## Antes de empezar

- TradingView abierto **con el lanzador**, no con doble clic.
- Claude Code abierto **en la carpeta del Starter**.
- Una empresa en la cabeza. Si no se te ocurre ninguna, usa una que ya conozcas: la del banco donde
  tienes la cuenta, la del móvil que llevas encima.

---

## Paso 1 · Cuadra el terreno *(2 minutos)*

Pega esto:

```
Dime en qué símbolo, qué bolsa y qué temporalidad está el gráfico ahora mismo.
Compara la bolsa que lees tú con la que aparece en el encabezado del gráfico y,
si no coinciden, dilo. No cambies nada todavía.
```

**Mira el gráfico y comprueba que coincide.** Si no coincide, ya has aprendido lo más importante del
día: **manda lo que ves**, no lo que te cuentan.

---

## Paso 2 · Cambia a tu empresa *(2 minutos)*

```
Cambia el gráfico a [TU EMPRESA] en temporalidad semanal.

Después del cambio, vuelve a leer el estado y dime en qué símbolo, qué bolsa y
qué temporalidad ha quedado. Si no es lo que te pedí, dímelo y para.

Comprueba también que el símbolo ha cargado de verdad: pídele un precio. Si no
devuelve precio, el símbolo no existe aunque el estado diga que sí.
```

> **Por qué ese último párrafo.** El conector puede decir que ha cambiado a un símbolo que no
> existe, y el estado del gráfico **lo confirma**. Lo único que lo detecta es pedir un precio. Está
> comprobado.

---

## Paso 3 · Los niveles *(5 minutos)*

Abre [`../prompts/03_donde_estan_suelos_y_techos.md`](../prompts/03_donde_estan_suelos_y_techos.md)
y pega el prompt que hay dentro.

**Lo importante no es la respuesta: es lo que hagas después.**

---

## Paso 4 · Compruébalo tú *(4 minutos)*

Coge **un solo nivel** de los que te ha dado. Mira sus dos fechas en el gráfico.

Pregúntate tres cosas:

1. ¿El precio se paró ahí de verdad, o solo pasó por encima?
2. ¿Las dos fechas están separadas, o son casi la misma semana?
3. ¿El nivel se apoya en cuerpos de vela o en una mecha suelta?

**Si algo no te cuadra, díselo.** Esa conversación es el ejercicio entero:

```
He mirado el contacto del [FECHA] y no veo que el precio se parara ahí.
Enséñame la vela de esa semana: apertura, máximo, mínimo y cierre. Si me he
equivocado yo, dímelo. Si te has equivocado tú, retíralo del nivel.
```

---

## Paso 5 · La ficha *(2 minutos)*

```
Pasa esto a una ficha usando la plantilla de proyecto/plantillas.

Rellena todo menos la sección "Lo que he comprobado YO", que es mía.
Marca FALTA en todo lo que no puedas sostener con datos del gráfico.

Guárdala en proyecto/fichas/ con el nombre de la empresa y la fecha de hoy.
```

Abre la ficha y **rellena a mano la sección 7**. Solo tú puedes decir qué has comprobado.

---

## Ya está

Tienes tu primera ficha. Y algo más importante: has visto **dónde puede equivocarse** y cómo se
pilla.

### Lo que deberías llevarte

| | |
|---|---|
| Lee el gráfico de verdad | No se lo inventa |
| Pero puede equivocarse de bolsa, de símbolo y de temporalidad | Por eso se confirma siempre |
| Un nivel sin dos fechas no es un nivel | Es una línea bonita |
| Lo que tú compruebas y lo que lee Claude **son cosas distintas** | Y no se mezclan |

### Ahora

- [`../prompts/`](../prompts/) — los otros tres, para el día a día.
- Repite este ejercicio con **una empresa que no conozcas**. Se nota la diferencia.
- Si algo falló, [`../solucion_problemas/PROBLEMAS.md`](../solucion_problemas/PROBLEMAS.md).
