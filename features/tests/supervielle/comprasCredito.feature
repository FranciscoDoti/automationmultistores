@supervielle
Feature: supervielleComprasCredito

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "/MXPIce1"
        And Hago click en "IniciarSesion"

    Scenario: Realizar una compra con tarjeta de crédito sin cupón de descuento
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra con tarjeta de crédito y cupón de descuento
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Lleno el campo "Cupon" con "NMWZ5EIF"
        And Hago click en "ValidarCupon"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


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
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
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
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        Then Verifico que el elemento "Pagar" este deshabilitado

    Scenario:Validar que al intentar realizar una compra con una tarjeta vencida aparezca un cartel de error
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorTarjetaVencida" contenga el texto "invalid_expiry_date"


    Scenario: Realizar una compra con tarjeta de crédito en 3 cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "TresCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra con tarjeta de crédito en 6 cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "SeisCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra con tarjeta de crédito en 9 cuotas
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "NueveCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra con tarjeta de credito en x cuotas sin interes
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra con tarjeta de credito en x cuotas sin interes TOKENIZADA
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
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra de un producto de Fravega con tarjeta de credito en x cuotas sin interes
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra de un producto de Fravega con tarjeta de credito en x cuotas sin interes TOKENIZADA
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "UnaCuotaTokenizado"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario:  Realizar una compra de un producto de Fravega con tarjeta de credito con xxAhora TOKENIZADA
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "AhoraDoce"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra de un producto de Fravega con tarjeta de credito con xxAhora
        When Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "AhoraDoce"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"
