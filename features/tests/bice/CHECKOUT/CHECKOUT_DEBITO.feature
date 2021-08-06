@bice
@CHECKOUT
@CHECKOUT_DEBITO
Feature: CHECKOUT_DEBITO

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"


    Scenario: TC_CHECKOUT_001 Realizar una compra con tarjeta de debito
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
        And Hago click en "OpcionDebitoWebPay"
        And Hago click en "SelectBancoDebitoWebPay"
        And Hago click en "SelectBancoDebitoOptionWebPay"
        And Lleno el campo "WebPayInputNroTarjetaDebito" con "NroTarjetaDebitoValida" yendo a buscar la config
        And Se envia tecla TAB al input "WebPayInputNroTarjetaDebito"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"

    
    Scenario: TC_CHECKOUT_129 Intentar realizar una compra con tarjeta de débito rechazada
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
        And Hago click en "OpcionDebitoWebPay"
        And Hago click en "SelectBancoDebitoWebPay"
        And Hago click en "SelectBancoDebitoOptionWebPay"
        And Lleno el campo "WebPayInputNroTarjetaDebito" con "NroTarjetaDebitoRechazada" yendo a buscar la config
        And Se envia tecla TAB al input "WebPayInputNroTarjetaDebito"
        And Hago click en "WebPayBotonPagar"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxErrorEnPago" contenga el texto "Lamentamos informarle que ha ocurrido un error con su pago."

    
    Scenario: TC_CHECKOUT_138 Realizar una compra abonando con tarjeta de débito con igual dirección de entrega y facturación
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
        And Hago click en "OpcionDebitoWebPay"
        And Hago click en "SelectBancoDebitoWebPay"
        And Hago click en "SelectBancoDebitoOptionWebPay"
        And Lleno el campo "WebPayInputNroTarjetaDebito" con "NroTarjetaDebitoValida" yendo a buscar la config
        And Se envia tecla TAB al input "WebPayInputNroTarjetaDebito"
        And Hago click en "WebPayBotonPagar"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"


    Scenario: TC_CHECKOUT_139 Realizar una compra abonando con tarjeta de débito con distinta dirección de entrega y facturación
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "DifiereDireccionEntrega"
        And Hago click en "DireccionEntrega1"
        And Hago click en "DireccionFacturacion2"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And bice captcha sleep
        And Hago click en "AceptarTerminosYCondiciones"
        And Hago click en "GenerarPedido"
        #Se pasa a la pagina de webpay
        And Hago click en "OpcionDebitoWebPay"
        And Hago click en "SelectBancoDebitoWebPay"
        And Hago click en "SelectBancoDebitoOptionWebPay"
        And Lleno el campo "WebPayInputNroTarjetaDebito" con "NroTarjetaDebitoValida" yendo a buscar la config
        And Se envia tecla TAB al input "WebPayInputNroTarjetaDebito"
        And Hago click en "WebPayBotonPagar"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"