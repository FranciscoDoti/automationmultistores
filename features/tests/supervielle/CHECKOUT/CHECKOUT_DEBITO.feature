@supervielle
@CHECKOUT
@CHECKOUT_DEBITO

Feature: CHECKOUT_DEBITO

    
    Scenario: TC_CHECKOUT_001 Realizar una compra con tarjeta de debito
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaDebito1            |
            | NombreApellido | nombreApellidoTarjetaDebito1 |
            | Vencimiento    | vencimientoTarjetaDebito1    |
            | CodSeguridad   | codSeguridadTarjetaDebito1   |
            | NroDocumento   | nroDocumentoTarjetaDebito1   |
        And Hago click en "PagarDebito"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_002 Realizar una compra con tarjeta de debito TOKENIZADA
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaDebitoTokenizada"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "codigoSeguridadToken"  yendo a buscar la config
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"