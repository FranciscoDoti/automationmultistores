@CHECKOUT_PUNTOS_DEBITO
Feature: CHECKOUT_PUNTOS_DEBITO

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

    Scenario: TC_CHECKOUT_065_Realizar una compra abonando con puntos y tarjeta de débito: Abonando con 50% Puntos y Tarjeta de débito.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "50puntos50pesos"
        And Hago click en "Comprar"
        Then Verifico que el elemento "PasosDeCompra" este habilitado
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    Scenario: TC_CHECKOUT_057_Realizar una compra abonando con puntos y tarjeta de débito: Abonando con 25% Puntos y Tarjeta de débito.
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "25puntos75pesos"
        And Hago click en "Comprar"
        Then Verifico que el elemento "PasosDeCompra" este habilitado
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"