@CHECKOUT_CREDITO
Feature: CHECKOUT_CREDITO

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        When Validar que el "Carrito" no tenga productos agregados

    Scenario: TC_CHECKOUT_003_Realizar una compra con tarjeta de crédito en x cuotas sin interés.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "SoloPesos"
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


    Scenario:  TC_CHECKOUT_004_Realizar una compra con tarjeta de crédito en x cuotas con interés.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "SoloPesos"
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

    # Scenario: TC_CHECKOUT_005_Realizar una compra con tarjeta de crédito con xxAhora.
    #When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
    #And Hago click en "SoloPesos"
    #And Hago click en "Comprar"
    #And Hago click en "AceptoCondiciones"
    #And Hago click en "IrACaja"
    #And Hago click en "TarjetaCredito"
    #And Lleno los siguientes campos leyendo la config
    #   | NroTarjeta       | 4507990000004905 |
    #    | Codigo           | 123              |
    #  | FechaVencimiento | 0821             |
    #   | Nombre           | Jose Ignacio     |
    #   | NroDocumento     | 39169244         |
    #And Hago click en "Cuotas"
    #And Hago click en "AhoraX"
    #And Hago click en "Pagar"
    #Then Verifico que el campo "ExitoCompra" contenga el texto ""

    Scenario: TC_CHECKOUT_017_Intentar realizar una compra con tarjeta de crédito con fecha de vencimiento expirada.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "SoloPesos"
        And Hago click en "Comprar"
        Then Verifico que el elemento "PasosDeCompra" este habilitado
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjeta               |
            | Codigo           | Codigo                   |
            | FechaVencimiento | FechaVencimientoExpirada |
            | Nombre           | Nombre                   |
            | NroDocumento     | NroDocumento             |
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorFechaExpiracion" contenga el texto "Revisá este dato"

