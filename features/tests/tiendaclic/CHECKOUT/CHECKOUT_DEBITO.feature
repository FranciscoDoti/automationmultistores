@TIENDACLIC
@CHECKOUT_DEBITO

Feature: CHECKOUT_DEBITO


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

Scenario: TC_CHECKOUT_001 Realizar una compra con Tarjeta de débito  
    * Hago click en "Comprar"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de debito"
    * Lleno los siguientes campos leyendo la config
        | Numero de tarjeta| tarjetaValida |
        | Nombre| nombre|
        | Vencimiento | vencimiento |
        | Codigo | codigo |
        | DNI | dni |
    * Hago click en "pagar"
    * Verifico que el campo "compraExitosa" contenga el texto "Tu compra se completó con éxito"

Scenario: TC_CHECKOUT_158 Intentar realizar una compra con Tarjeta de debito con fecha de vencimiento expirada.
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de debito"
    * Lleno los siguientes campos leyendo la config
        | Numero de tarjeta| tarjetaValida |
        | Nombre| nombre|
        | Vencimiento | vencimientoInvalido |
        | Codigo | codigo |
        | DNI | dni |
    * Verifico que el campo "tarjetaExpirada" contenga el texto "Revisá este dat"
    

#Scenario: Realizar una compra de un producto de Fravega con Tarjeta de débito.
#    * Hago click en "envio domicilio/sucursal"
#    * Lleno el campo "horario entrega" con "08:00 a: 20:00" #todo: si es domicilio
#    * Lleno los siguientes campos
#    | provincia| Capital Federal|
#    | sucursal | Almagro|