@icbcCredito
Feature: icbcCheckoutPuntos

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login
        And Lleno el campo "Usuario" con "icbcclub16"
        And Lleno el campo "Contraseña" con "prueba02"
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal

    @PRUEBA
    Scenario: Realizar una compra de un producto Fravega con Puntos.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "SoloPuntos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "PagarConPuntos"
        #Aceptar alerta desea pagar con puntos
        Then Verifico que el campo "ExitoCompra" contenga el texto ""

    Scenario: Realizar una compra con Puntos.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "SoloPuntos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "PagarConPuntos"
        #Aceptar alerta desea pagar con puntos
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    Scenario: Realizar una compra abonando con 50% Puntos y Tarjeta de crédito en x cuotas sin interés.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "50puntos50pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos
            | NroTarjeta       | 4507990000004905 |
            | Codigo           | 123              |
            | FechaVencimiento | 0821             |
            | Nombre           | Jose Ignacio     |
            | NroDocumento     | 39169244         |
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    Scenario: Realizar una compra abonando con 50% Puntos y Tarjeta de crédito en x cuotas con intereses.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "50puntos50pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos
            | NroTarjeta       | 4507990000004905 |
            | Codigo           | 123              |
            | FechaVencimiento | 0821             |
            | Nombre           | Jose Ignacio     |
            | NroDocumento     | 39169244         |
        And Hago click en "Cuotas"
        And Hago click en "CuatroCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    # Scenario: Realizar una compra abonando con 50% Puntos y Tarjeta de crédito en xxAhora.
    #    And Paso el mouse por encima de "Categorias"
    #   And Hago click en "Hogar"
    #  And Hago click en "Adornos"
    # And Hago click en "PrimerProducto"
    # And Hago click en "50puntos50pesos"
    #   And Hago click en "Comprar"
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaCredito"
    #   And Lleno los siguientes campos
    #       | NroTarjeta       | 4507990000004905 |
    #       | Codigo           | 123              |
    #       | FechaVencimiento | 0821             |
    #       | Nombre           | Jose Ignacio     |
    #       | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #   And Hago click en "AhoraX"
    #   And Hago click en "Pagar"
    #  Then Verifico que el campo "ExitoCompra" contenga el texto ""

    Scenario: Realizar una compra abonando con 50% Puntos y Tarjeta de débito.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "50puntos50pesos"
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


    Scenario: Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de débito.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "50puntos50pesos"
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

    Scenario: Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de crédito en x cuotas sin interés.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "50puntos50pesos"
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
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    # Scenario: Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de crédito en x cuotas con intereses.
    #    And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "50puntos50pesos"
    #   And Hago click en "Comprar"
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos
    #       | NroTarjeta       | 4066520617031158 |
    #       | Codigo           | 123              |
    #      | FechaVencimiento | 0821             |
    #      | Nombre           | Jose Ignacio     |
    #       | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #   And Hago click en "CuatroCuotas"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto ""

    #Scenario: Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de crédito en xxAhora.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "50puntos50pesos"
    #   And Hago click en "Comprar"
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos
    #       | NroTarjeta       | 4066520617031158 |
    #       | Codigo           | 123              |
    #       | FechaVencimiento | 0821             |
    #       | Nombre           | Jose Ignacio     |
    #       | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #   And Hago click en "AhoraX"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto ""

    Scenario: Realizar una compra abonando con 25% Puntos y Tarjeta de crédito en x cuotas sin interés.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "25puntos75pesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"
        And Hago click en "TarjetaCredito"
        And Lleno los siguientes campos
            | NroTarjeta       | 4507990000004905 |
            | Codigo           | 123              |
            | FechaVencimiento | 0821             |
            | Nombre           | Jose Ignacio     |
            | NroDocumento     | 39169244         |
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"
    # Scenario: Realizar una compra abonando con 25% Puntos y Tarjeta de crédito en x cuotas con intereses.
    #    And Paso el mouse por encima de "Categorias"
    #   And Hago click en "Hogar"
    #   And Hago click en "Adornos"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "25puntos75pesos"
    #  And Hago click en "Comprar"
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaCredito"
    #   And Lleno los siguientes campos
    #       | NroTarjeta       | 4507990000004905 |
    #       | Codigo           | 123              |
    #       | FechaVencimiento | 0821             |
    #       | Nombre           | Jose Ignacio     |
    #       | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #   And Hago click en "CuatroCuotas"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto ""

    #Scenario: Realizar una compra abonando con 25% Puntos y Tarjeta de crédito en xxAhora.
    #   And Paso el mouse por encima de "Categorias"
    #   And Hago click en "Hogar"
    #  And Hago click en "Adornos"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "25puntos75pesos"
    #   And Hago click en "Comprar"
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaCredito"
    #   And Lleno los siguientes campos
    #   | NroTarjeta       | 4507990000004905 |
    #      | Codigo           | 123              |
    #     | FechaVencimiento | 0821             |
    #    | Nombre           | Jose Ignacio     |
    #   | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #  And Hago click en "AhoraX"
    # And Hago click en "Pagar"
    #Then Verifico que el campo "ExitoCompra" contenga el texto ""

    Scenario: Realizar una compra abonando con 25% Puntos y Tarjeta de débito.
        When Abro la siguiente Url "https://icbcmall-uat.aper.cloud/donaciones/104067060-automation-product-123123.html"
        And Hago click en "25puntos75pesos"
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

    Scenario: Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de débito.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "25puntos75pesos"
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

    Scenario: Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de crédito en x cuotas sin interés.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "25puntos75pesos"
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
        And Hago click en "Cuotas"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    Scenario: Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de crédito en x cuotas con intereses.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "25puntos75pesos"
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
        And Hago click en "Cuotas"
        And Hago click en "CuatroCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    Scenario: Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de crédito en xxAhora.
        And Lleno el campo "Buscador" con "Fravega"
        And Hago click en "PrimerProducto"
        And Hago click en "25puntos75pesos"
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
        And Hago click en "Cuotas"
        And Hago click en "AhoraX"
        And Hago click en "Pagar"
        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"