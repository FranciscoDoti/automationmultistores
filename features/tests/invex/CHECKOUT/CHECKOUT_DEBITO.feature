@CHECKOUT_DEBITO
Feature: CHECKOUT_DEBITO

    Background: Pasos comunes
        Given Abro la pagina "invex"
        And Leo los datos de "invex"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "HeaderPage" contenga el texto "INICIA SESIÓN CON TU CUENTA"
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "ContinuarCompra"
        And Hago click en "ConfirmarDireccion"

    Scenario: TC_CHECKOUT_001_Realizar una compra con tarjeta de débito
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaDebito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_133_Realizar una compra abonando con tarjeta de debito y envío con cargo: Envio CONTACTNEXT
        And Hago click en "EnvioCONTACTNEXT"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaDebito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_133_Realizar una compra abonando con tarjeta de debito y envío con cargo: Envio BASEONE
        And Hago click en "EnvioBASEONE"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaDebito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_134_Realizar una compra abonando con tarjeta de debito y retiro en tienda
        And Hago click en "RetiroTienda"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaDebito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_158_Intentar realizar una compra con tarjeta de debito con fecha de vencimiento expirada
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaDebito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimientoExpirado" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "Completar fecha de Vencimiento"