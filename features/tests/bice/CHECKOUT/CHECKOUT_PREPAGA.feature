@bice
@CHECKOUT
@CHECKOUT_PREPAGA
Feature: CHECKOUT_PREPAGA

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"


    Scenario: TC_CHECKOUT_124 Realizar una compra abonando con tarjeta prepaga
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And bice captcha sleep
        And Hago click en "AceptarTerminosYCondiciones"
        And Hago click en "GenerarPedido"
        #Se pasa a la pagina de webpay
        And Hago click en "OpcionPrepagoWebPay"
        And Hago click en "SelectBancoDebitoWebPay"
        And Hago click en "SelectBancoPrepagoOptionWebPay"
        And Lleno el campo "WebPayInputNroTarjetaPrepago" con "NroTarjetaDebitoValida" yendo a buscar la config
        And Lleno el campo "WebPayInpuRUT" con "TransbankRUT" yendo a buscar la config
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"


    Scenario: TC_CHECKOUT_131 Intentar realizar una compra con tarjeta prepaga rechazada
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And bice captcha sleep
        And Hago click en "AceptarTerminosYCondiciones"
        And Hago click en "GenerarPedido"
        #Se pasa a la pagina de webpay
        And Hago click en "OpcionPrepagoWebPay"
        And Hago click en "SelectBancoDebitoWebPay"
        And Hago click en "SelectBancoPrepagoOptionWebPay"
        And Lleno el campo "WebPayInputNroTarjetaPrepago" con "NroTarjetaDebitoRechazada" yendo a buscar la config
        And Lleno el campo "WebPayInpuRUT" con "TransbankRUT" yendo a buscar la config
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxErrorEnPago" contenga el texto "Lamentamos informarle que ha ocurrido un error con su pago."