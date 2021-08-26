
@bice
@CHECKOUT
@CHECKOUT_CREDITO
Feature: CHECKOUT_CREDITO

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"

    
    Scenario: TC_CHECKOUT_003 Realizar una compra con tarjeta de crédito en x cuotas sin interés
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
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay3CuotasButton"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"

    #REVISAR
     Scenario: TC_CHECKOUT_017 Intentar realizar una compra con tarjeta de crédito con fecha de vencimiento expirada
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
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoInvalida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay3CuotasButton"
        And Hago click en "WebPayBotonPagar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"

    
    Scenario: TC_CHECKOUT_130 Intentar realizar una compra con tarjeta de crédito rechazada
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
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoRechazada" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay3CuotasButton"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxErrorEnPago" contenga el texto "Lamentamos informarle que ha ocurrido un error con su pago."


    Scenario: TC_CHECKOUT_140 Realizar una compra abonando con tarjeta de crédito con igual dirección de entrega y facturación
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
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay3CuotasButton"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"

    
    Scenario: TC_CHECKOUT_141 Realizar una compra abonando con tarjeta de crédito con distinta dirección de entrega y facturación
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
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay3CuotasButton"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
