@CHECKOUT_CREDITO
Feature: CHECKOUT_CREDITO

    Background: Pasos comunes
        Given Abro la pagina "invex"
        And Leo los datos de "invex"
        When Paso el mouse por encima de "IniciarSesion"
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

    Scenario: TC_CHECKOUT_003_Realizar una compra con tarjeta de crédito en x cuotas sin interés.
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_017_Intentar realizar una compra con tarjeta de crédito con fecha de vencimiento expirada.
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimientoExpirado" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "Completar fecha de Vencimiento"

    Scenario: TC_CHECKOUT_130_Intentar realizar una compra con tarjeta de crédito rechazada
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCreditoRechazada" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "LO SENTIMOS, TU PEDIDO NO PUDO SER CONFIRMADO"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "La tarjeta ingresada ha sido declinada. Por favor intenta con otro método de pago."

    Scenario: TC_CHECKOUT_130_Intentar realizar una compra con tarjeta de crédito rechazada: Tarjeta con fondo insuficiente
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCreditoFondoInsuficiente" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "LO SENTIMOS, TU PEDIDO NO PUDO SER CONFIRMADO"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "Esta tarjeta no tiene suficientes fondos para completar la compra."
    
    Scenario: TC_CHECKOUT_136_Realizar una compra abonando con tarjeta de crédito y envío con cargo: Envio CONTACTNEXT 
        And Hago click en "EnvioCONTACTNEXT"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_136_Realizar una compra abonando con tarjeta de crédito y envío con cargo: Envio BASEONE
        And Hago click en "EnvioBASEONE"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

   Scenario: TC_CHECKOUT_137_Realizar una compra abonando con tarjeta de crédito y retiro en tienda
        And Hago click en "RetiroTienda"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"