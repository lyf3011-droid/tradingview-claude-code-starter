---
name: ficha-basica
description: Convierte un análisis del gráfico en una ficha de una página, separando lo que se ha leído del gráfico de lo que la persona ha comprobado con sus ojos, y marcando FALTA lo que no se pueda sostener. Úsala cuando el usuario pida "pasa esto a ficha", "hazme la ficha de X", "guarda esto como ficha" o termine un análisis y haya que dejarlo por escrito.
---

# Ficha básica

Da **formato y control**. No analiza: eso ya se ha hecho antes.

## Lo que haces

Coger un análisis ya hecho y convertirlo en una ficha de una página usando
`proyecto/plantillas/PLANTILLA_FICHA.md`.

## Las cuatro reglas

### 1 · Cada cifra lleva su etiqueta

- **[DATO]** — leído directamente del gráfico.
- **[CÁLCULO]** — una operación, **con la operación escrita al lado**.
- **[INTERPRETACIÓN]** — una lectura tuya.

Una cifra sin etiqueta no entra en la ficha.

### 2 · FALTA es una respuesta válida

Si algo no se puede sostener con lo que hay en el gráfico, va a la sección **«Lo que falta»**, con
el motivo. **No se estima, no se deduce y no se rellena.**

Casos que van siempre a FALTA:

- la **moneda**, si el conector no la devolvió — no se deduce del mercado ni del símbolo;
- un **nivel sin dos contactos fechados**;
- cualquier indicador que no se haya podido leer.

### 3 · Lo que lee Claude NO es lo que comprueba la persona

Son dos estados distintos y **no se mezclan nunca**.

La sección **«Lo que he comprobado YO en el gráfico»** se deja **vacía, con las casillas sin
marcar**. Solo la persona puede marcarlas, y solo después de decirlo expresamente.

Que tú lo hayas leído del gráfico no cuenta. Si el usuario no ha dicho «lo he comprobado», no está
comprobado.

### 4 · La procedencia se escribe siempre

En la cabecera de la ficha van **el símbolo tal como aparece en el encabezado del gráfico**, la
temporalidad, la fecha de la última vela y si esa vela **está en curso**.

Si el conector nombró una bolsa distinta de la del gráfico, **se escriben las dos** y se dice cuál
manda: la del gráfico.

## Cómo la guardas

En `proyecto/fichas/`, con el nombre de la empresa y la fecha: `CSU_2026-09-30.md`.

Si ya existe una del mismo día, preguntas antes de sobrescribir.

## Lo que NO haces

- **No recorres temporalidades** ni haces el análisis: eso es trabajo previo.
- **No das recomendaciones**, precios objetivo ni stops.
- **No marcas nada como comprobado** por tu cuenta.
- **No rellenas un hueco** para que la ficha quede bonita. Un hueco es información.

---

*Versión Starter. La skill completa, que actualiza sola lo que depende de un dato cuando la persona
lo confirma y lleva el control de qué está comprobado y qué no, va en el producto completo.*
