@supervielle
@CHECKOUT
@CHECKOUT_CUPON

Feature: CHECKOUT_CUPON

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"

    Scenario: TC_CHECKOUT_018 Realizar una compra con tarjeta de crédito y cupón de descuento
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Lleno el campo "Cupon" con "codigoCupon1" yendo a buscar la config
        And Hago click en "ValidarCupon"
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

    Scenario: TC_CHECKOUT_028 Validar que al ingresar un cupón de descuento invalido aparezca el cartel Este cupon es invalido
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Lleno el campo "Cupon" con "codigoCuponInvalido1" yendo a buscar la config
        And Hago click en "ValidarCupon"
        Then Verifico que el campo "MensajeCuponInvalido" contenga el texto "Este cupón es invalido"