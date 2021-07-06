@supervielle
@CHECKOUT
@CHECKOUT_CREDITO

Feature: CHECKOUT_CREDITO_FRAVEGA

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"

    Scenario: TC_CHECKOUT_010 Realizar una compra de un producto de Fravega con tarjeta de credito en x cuotas sin interes
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_014 Realizar una compra de un producto de Fravega con tarjeta de credito en x cuotas sin interes TOKENIZADA
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "UnaCuotaTokenizado"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "codigoSeguridadToken" yendo a buscar la config
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_016 Realizar una compra de un producto de Fravega con tarjeta de credito con xxAhora TOKENIZADA
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "AhoraDoce"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "codigoSeguridadToken" yendo a buscar la config
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_012 Realizar una compra de un producto de Fravega con tarjeta de credito con xxAhora
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        And Hago click en "Siguiente"
        And Hago click en "AhoraDoce"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"