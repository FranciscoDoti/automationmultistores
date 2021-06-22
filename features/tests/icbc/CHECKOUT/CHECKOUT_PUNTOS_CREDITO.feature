@CHECKOUT_PUNTOS_CREDITO
Feature: CHECKOUT_PUNTOS_CREDITO

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login
        When Lleno el campo "Usuario" con "usuarioValido2" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        When Validar que el "Carrito" no tenga productos agregados
    
    Scenario: TC_CHECKOUT_050_TC_CHECKOUT_066_Realizar una compra abonando con puntos y tarjeta de crédito en x cuotas sin interés: Abonando con 50% Puntos y Tarjeta de crédito en x cuotas sin interés.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "50puntos50pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjeta       |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    Scenario: TC_CHECKOUT_051_TC_CHECKOUT_067_Realizar una compra abonando con puntos y tarjeta de crédito en x cuotas con interés: Abonando con 50% Puntos y Tarjeta de crédito en x cuotas con intereses.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "50puntos50pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjeta       |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        And Hago click en "Cuotas"
        And Hago click en "CuatroCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    # Scenario: TC_CHECKOUT_052_Realizar una compra abonando con puntos y tarjeta de crédito en xxAhora: Abonando con 50% Puntos y Tarjeta de crédito en xxAhora.
    #    And Paso el mouse por encima de "Categorias"
    #    And Hago click en "Hogar"
    #    And Hago click en "Adornos"
    #    And Hago click en "PrimerProducto"
    #    And Hago click en "50puntos50pesos"
    #    And Hago click en "Comprar"
    #    And Hago click en "AceptoCondiciones"
    #    And Hago click en "IrACaja"
    #    And Hago click en "TarjetaCredito"
    #    And Lleno los siguientes campos leyendo la config
    #        | NroTarjeta       | 4507990000004905 |
    #        | Codigo           | 123              |
    #        | FechaVencimiento | 0821             |
    #        | Nombre           | Jose Ignacio     |
    #        | NroDocumento     | 39169244         |
    #    And Hago click en "Cuotas"
    #    And Hago click en "AhoraX"
    #    And Hago click en "Pagar"
    #    Then Verifico que el campo "ExitoCompra" contenga el texto ""

    Scenario: TC_CHECKOUT_050_TC_CHECKOUT_058_Realizar una compra abonando con puntos y tarjeta de crédito en x cuotas sin interés: Abonando con 25% Puntos y Tarjeta de crédito en x cuotas sin interés.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "25puntos75pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjeta       |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

 Scenario: TC_CHECKOUT_051_TC_CHECKOUT_059_Realizar una compra abonando con puntos y tarjeta de crédito en x cuotas con interés: Abonando con 25% Puntos y Tarjeta de crédito en x cuotas con intereses.
    When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "25puntos75pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjeta       |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        And Hago click en "Cuotas"
        And Hago click en "CuatroCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

# Scenario: TC_CHECKOUT_052_Realizar una compra abonando con puntos y tarjeta de crédito en xxAhora: Abonando con 25% Puntos y Tarjeta de crédito en xxAhora.
#   And Paso el mouse por encima de "Categorias"
#   And Hago click en "Hogar"
#   And Hago click en "Adornos"
#   And Hago click en "PrimerProducto"
#   And Hago click en "25puntos75pesos"
#   And Hago click en "Comprar"
#   And Hago click en "AceptoCondiciones"
#   And Hago click en "IrACaja"
#   And Hago click en "TarjetaCredito"
#   And Lleno los siguientes campos leyendo la config
#      | NroTarjeta       | 4507990000004905 |
#      | Codigo           | 123              |
#      | FechaVencimiento | 0821             |
#      | Nombre           | Jose Ignacio     |
#      | NroDocumento     | 39169244         |
#   And Hago click en "Cuotas"
#   And Hago click en "AhoraX"
#   And Hago click en "Pagar"
#   Then Verifico que el campo "ExitoCompra" contenga el texto ""
