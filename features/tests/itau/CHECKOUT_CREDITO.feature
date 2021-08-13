@itau
Feature: itauComprasCredito

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "ContinuarMetodoEnvio"
        And Hago click en "AceptoTerminosYCondiciones"
        And Hago click en "SinRegistroTarjeta"


    Scenario: Realizar una compra con tarjeta de crédito sin cupón de descuento
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo              |
            | NroTarjetaValido | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelCompraExitosa" contenga el texto "¡Felicitaciones! tu pedido está confirmado"

