# 4 · ¿Estoy comparando lo mismo?

**Para qué:** que el precio que estás mirando sea el de la empresa que crees, en la bolsa que crees
y en la moneda que crees.
**Cuándo:** siempre que compares dos fuentes, o antes de anotar un precio en cualquier sitio.
**Necesitas:** el símbolo abierto.

```
Antes de darme ningún dato, cuadra el símbolo:

1. Dime qué símbolo hay abierto según el estado del gráfico.
2. Dime qué bolsa lees tú para ese símbolo, y compárala con la que aparece en
   el encabezado del gráfico. Si NO coinciden, dilo expresamente y quédate con
   la del encabezado.
3. Dime si has podido leer la MONEDA con alguna herramienta. Si no, déjala como
   NO DISPONIBLE. NO la deduzcas del mercado ni del símbolo.
4. Dime el último precio de cierre y de qué vela es.

Si algo de esto no cuadra, dímelo y PARA antes de darme más datos.
```

**Qué deberías ver:** el símbolo confirmado, la bolsa del gráfico, la moneda como NO DISPONIBLE y un
precio con su fecha.

**Por qué la moneda sale NO DISPONIBLE:** porque el conector no la devuelve en ningún mercado. Está
comprobado. **Lo importante es que no se la invente**: una empresa cotizada en dos sitios tiene dos
precios distintos, y confundirlos cambia el signo de cualquier conclusión.

**Por qué la bolsa puede no coincidir:** el conector nombra algunos símbolos de otra forma. Pides
NASDAQ y te dice BATS o Cboe One. No es un fallo ni depende del plan: manda el encabezado.

*Estado: probado en parte. El cuadre se ejecutó sobre 17 valores con una desviación máxima del
0,47 %, y la no lectura de la moneda está comprobada.*
