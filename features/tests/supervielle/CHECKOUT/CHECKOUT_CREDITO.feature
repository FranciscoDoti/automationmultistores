@supervielle
@CHECKOUT
@CHECKOUT_CREDITO

Feature: CHECKOUT_CREDITO

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"

    Scenario: TC_CHECKOUT_003 Realizar una compra con tarjeta de crédito sin cupón de descuento
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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

    Scenario: TC_CHECKOUT_017 Validar que al intentar realizar una compra con una tarjeta vencida aparezca un cartel de error
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1                |
            | NombreApellido | nombreApellidoTarjetaCredito1     |
            | Vencimiento    | vencimientoVencidoTarjetaCredito1 |
            | CodSeguridad   | codSeguridadTarjetaCredito1       |
            | NroDocumento   | nroDocumentoTarjetaCredito1       |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorTarjetaVencida" contenga el texto "invalid_expiry_date"

    Scenario: TC_CHECKOUT_004 Realizar una compra con tarjeta de crédito en 3 cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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
        And Hago click en "TresCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_004 Realizar una compra con tarjeta de crédito en 6 cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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
        And Hago click en "SeisCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_004 Realizar una compra con tarjeta de crédito en 9 cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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
        And Hago click en "NueveCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: TC_CHECKOUT_003 Realizar una compra con tarjeta de credito en x cuotas sin interes
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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

    Scenario: TC_CHECKOUT_006 Realizar una compra con tarjeta de credito en x cuotas sin interes TOKENIZADA
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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

        #Pendiente verificar siguientes scenarios

        Scenario: Validar que al apretar el botón siguiente se cargue la pagina con las opciones de cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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
        Then Verifico que el campo "CartelSeleccionarCuotas" contenga el texto "Seleccioná las cuotas"

    Scenario: Validar que no se habilite el botón Continuar si no se seleccionó ninguna cuota
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
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
        Then Verifico que el elemento "Pagar" este deshabilitado