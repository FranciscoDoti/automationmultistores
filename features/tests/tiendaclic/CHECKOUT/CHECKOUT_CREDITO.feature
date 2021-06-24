Feature: CHECKOUT_CREDITO

Background: Ingreso a tiendaclic
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
    And Lleno el campo "Clave" con "claveValida" yendo a buscar la config
    And Hago click en "Inicio sesion"
    And Navego al producto qa automation

    #* Lleno el campo "busqueda" con "computadora"
    #* Hago click en "lupaBusqueda"
    #* Hago click en "objeto compra"

Scenario Outline: TC_CHECKOUT_003 Realizar una compra con Tarjeta de crédito en XX cuotas sin interés.
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de credito"
    * Lleno los siguientes campos
        | Numero de tarjeta| 4507990000004905 |
        | Cantidad de cuotas | <cuotas> |
        | Nombre| Alejandro Aper|
        | Vencimiento | 12/22 |
        | Codigo | 123 |
        | DNI | 123456789 |
    * Hago click en "pagar"
    * Verifico que el campo "compraExitosa" contenga el texto "Tu compra se completó con éxito"

    Examples:
        | cuotas |
        | 3 Cuotas  |
        | 6 Cuotas |
        | 12 Cuotas |


Scenario: TC_CHECKOUT_017 Intentar realizar una compra con Tarjeta de crédito con fecha de vencimiento expirada.
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de credito"
    * Lleno los siguientes campos leyendo la config
        | Numero de tarjeta| tarjetaValida |
        | Nombre| nombre|
        | Vencimiento | vencimientoInvalido |
        | Codigo | codigo |
        | DNI | dni |
    * Verifico que el campo "tarjetaExpirada" contenga el texto "Revisá este dat"