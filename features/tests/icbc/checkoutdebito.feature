@icbc
Feature: icbcCheckoutDebito

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login
        And Lleno el campo "Usuario" con "pruebamall11"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal


    Scenario: Realizar una compra con Tarjeta de débito.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "SoloPesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos
            | NroTarjeta       | 4066520617031158 |
            | Codigo           | 123              |
            | FechaVencimiento | 0821             |
            | Nombre           | Jose Ignacio     |
            | NroDocumento     | 39169244         |
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"


    Scenario: Realizar una compra de un producto de Fravega con Tarjeta de débito.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "Buscar"
        And Hago click en "PrimerProducto"
        And Hago click en "SoloPesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos
            | NroTarjeta       | 4066520617031158 |
            | Codigo           | 123              |
            | FechaVencimiento | 0821             |
            | Nombre           | Jose Ignacio     |
            | NroDocumento     | 39169244         |
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

