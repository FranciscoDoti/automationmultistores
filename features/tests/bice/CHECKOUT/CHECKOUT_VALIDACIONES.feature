@bice
@CHECKOUT
@CHECKOUT_VALIDACIONES
Feature: CHECKOUT_VALIDACIONES

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"

    
    Scenario: TC_CHECKOUT_142 Validar propiedades de campo Número de tarjeta
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
        Then Se compara el valor del atributo "type" de el elemento "WebPayInputNroTarjeta" con el valor "tel"
        Then Se compara el valor del atributo "size" de el elemento "WebPayInputNroTarjeta" con el valor "16"

    
    Scenario: TC_CHECKOUT_144 Validar propiedades de campo Vencimiento
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
        Then Se compara el valor del atributo "pattern" de el elemento "WebPayInputFechaVencimiento" con el valor "[0-9\/]*$"
        Then Se compara el valor del atributo "size" de el elemento "WebPayInputFechaVencimiento" con el valor "5"

    
    Scenario: TC_CHECKOUT_145 Validar propiedades de campo Código de seguridad
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
        And bice captcha sleep
        Then Se compara el valor del atributo "pattern" de el elemento "WebPayInputCVV" con el valor "[0-9]*$"
        Then Se compara el valor del atributo "maxlength" de el elemento "WebPayInputCVV" con el valor "3"
        Then Se compara el valor del atributo "type" de el elemento "WebPayInputCVV" con el valor "password"

    
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
        Then Se compara el valor del atributo "maxlength" de el elemento "WebPayInpuRUT" con el valor "13"




        
