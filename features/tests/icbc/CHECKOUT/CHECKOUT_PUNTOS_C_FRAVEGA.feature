@CHECKOUT_PUNTOS_C_FRAVEGA
Feature: CHECKOUT_PUNTOS_C_FRAVEGA

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

    # Scenario: TC_CHECKOUT_091_Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de crédito en x cuotas sin interés.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "Buscar"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "50puntos50pesos"
    #   And Hago click en "Comprar"
    #Then Verifico que el elemento "PasosDeCompra" este habilitado
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos leyendo la config
    #        | NroTarjeta       | NroTarjeta       |
    #        | Codigo           | Codigo           |
    #        | FechaVencimiento | FechaVencimiento |
    #        | Nombre           | Nombre           |
    #        | NroDocumento     | NroDocumento     |
    #   And Hago click en "Cuotas"
    #   And Hago click en "UnaCuota"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    # Scenario: TC_CHECKOUT_092_Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de crédito en x cuotas con intereses.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "50puntos50pesos"
    #   And Hago click en "Comprar"
    #Then Verifico que el elemento "PasosDeCompra" este habilitado
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos leyendo la config
    #       | NroTarjeta       | 4066520617031158 |
    #       | Codigo           | 123              |
    #       | FechaVencimiento | 0821             |
    #       | Nombre           | Jose Ignacio     |
    #       | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #   And Hago click en "CuatroCuotas"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto ""

    # Scenario: TC_CHECKOUT_093_Realizar una compra de un producto Fravega abonando con 50% Puntos y Tarjeta de crédito en xxAhora.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "50puntos50pesos"
    #   And Hago click en "Comprar"
    #Then Verifico que el elemento "PasosDeCompra" este habilitado
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos leyendo la config
    #       | NroTarjeta       | 4066520617031158 |
    #       | Codigo           | 123              |
    #       | FechaVencimiento | 0821             |
    #       | Nombre           | Jose Ignacio     |
    #       | NroDocumento     | 39169244         |
    #   And Hago click en "Cuotas"
    #   And Hago click en "AhoraX"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto ""

    # Scenario: TC_CHECKOUT_083_Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de crédito en x cuotas sin interés.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "Buscar"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "25puntos75pesos"
    #   And Hago click en "Comprar"
    #Then Verifico que el elemento "PasosDeCompra" este habilitado
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos leyendo la config
    #       | NroTarjeta       | NroTarjeta       |
    #       | Codigo           | Codigo           |
    #       | FechaVencimiento | FechaVencimiento |
    #       | Nombre           | Nombre           |
    #       | NroDocumento     | NroDocumento     |
    #   And Hago click en "Cuotas"
    #   And Hago click en "UnaCuota"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    # Scenario: TC_CHECKOUT_084_Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de crédito en x cuotas con intereses.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "Buscar"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "25puntos75pesos"
    #   And Hago click en "Comprar"
    #Then Verifico que el elemento "PasosDeCompra" este habilitado
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos leyendo la config
    #       | NroTarjeta       | NroTarjeta       |
    #       | Codigo           | Codigo           |
    #       | FechaVencimiento | FechaVencimiento |
    #       | Nombre           | Nombre           |
    #       | NroDocumento     | NroDocumento     |
    #   And Hago click en "Cuotas"
    #   And Hago click en "CuatroCuotas"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"

    # Scenario: TC_CHECKOUT_085_Realizar una compra de un producto Fravega abonando con 25% Puntos y Tarjeta de crédito en xxAhora.
    #   And Lleno el campo "Buscador" con "Fravega"
    #   And Hago click en "Buscar"
    #   And Hago click en "PrimerProducto"
    #   And Hago click en "25puntos75pesos"
    #   And Hago click en "Comprar"
    #Then Verifico que el elemento "PasosDeCompra" este habilitado
    #   And Hago click en "AceptoCondiciones"
    #   And Hago click en "IrACaja"
    #   And Hago click en "TarjetaDebito"
    #   And Lleno los siguientes campos leyendo la config
    #       | NroTarjeta       | NroTarjeta       |
    #       | Codigo           | Codigo           |
    #       | FechaVencimiento | FechaVencimiento |
    #       | Nombre           | Nombre           |
    #       | NroDocumento     | NroDocumento     |
    #   And Hago click en "Cuotas"
    #   And Hago click en "AhoraX"
    #   And Hago click en "Pagar"
    #   Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"