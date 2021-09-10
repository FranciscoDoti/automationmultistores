@bice
@CHECKOUT
@CHECKOUT_DOLARES
Feature: CHECKOUT_DOLARES

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"

    
    Scenario: TC_CHECKOUT_116 Realizar una compra abonando con 50% dólares Bice y tarjeta de débito
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And Hago click en "OpcionPagoDolaresBice"
        And Hago click en "OpcionDolares50Bice"
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

    
    Scenario: TC_CHECKOUT_117 Realizar una compra abonando con 50% dólares Bice y tarjeta de credito en X cuotas sin interes
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And Hago click en "OpcionPagoDolaresBice"
        And Hago click en "OpcionDolares50Bice"
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

    
    Scenario: TC_CHECKOUT_118 Realizar una compra abonando con 50% dólares Bice y tarjeta de credito en X cuotas con interes
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And Hago click en "OpcionPagoDolaresBice"
        And Hago click en "OpcionDolares50Bice"
        And bice captcha sleep
        And Hago click en "AceptarTerminosYCondiciones"
        And Hago click en "GenerarPedido"
        #Se pasa a la pagina de webpay
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay24CuotasButton"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"


    Scenario: TC_CHECKOUT_120 Realizar una compra abonando con 100% dólares Bice y tarjeta de débito
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And Hago click en "OpcionPagoDolaresBice"
        And Hago click en "OpcionDolares100Bice"
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

    
    Scenario: TC_CHECKOUT_121 Realizar una compra abonando con 100% dólares Bice y tarjeta de credito en X cuotas sin interes
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And Hago click en "OpcionPagoDolaresBice"
        And Hago click en "OpcionDolares100Bice"
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

    
    Scenario: TC_CHECKOUT_122 Realizar una compra abonando con 100% dólares Bice y tarjeta de credito en X cuotas con interes
        When Abro la siguiente Url "linkProductoAutomatizacion" yendo a buscar la config
        And Hago click en "AñadirProductoAlCarrito"
        And Hago click en "PasarPorCaja"
        And Hago click en "ConfirmarDireccionEntrega"
        And Hago click en "ConfirmarOpcionDeEnvio"
        And Hago click en "OpcionPagoTarjetaCreditoBice"
        And Hago click en "OpcionPagoDolaresBice"
        And Hago click en "OpcionDolares100Bice"
        And bice captcha sleep
        And Hago click en "AceptarTerminosYCondiciones"
        And Hago click en "GenerarPedido"
        #Se pasa a la pagina de webpay
        And Hago click en "OpcionCreditoWebPay"
        And Lleno el campo "WebPayInputNroTarjeta" con "NroTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputFechaVencimiento" con "FechaVencimientoTarjetaCreditoValida" yendo a buscar la config
        And Lleno el campo "WebPayInputCVV" con "CVVTarjetaCreditoValida" yendo a buscar la config
        And Hago click en "WebPay24CuotasButton"
        And Hago click en "WebPayBotonPagar"
        #Se pasa a la pagina de Transbank
        And Lleno el campo "TransbankInputRut" con "TransbankRUT" yendo a buscar la config
        And Lleno el campo "TransbankInputClave" con "TransbankClave" yendo a buscar la config
        And Hago click en "TransbankAceptar"
        And Hago click en "TransbankContinuar"
        Then Verifico que el campo "TextBoxPedidoConfirmado" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"