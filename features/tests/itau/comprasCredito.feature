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


    Scenario: Validar que al apretar el botón pagar habiendo ingresado letras en el campo tarjeta aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento       | Codigo              |
            | TresLetras | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Invalid card number"

    Scenario: Validar que al apretar el botón pagar habiendo ingresado caract. especiales en el campo tarjeta aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta           | FechaVencimiento       | Codigo              |
            | CaracteresEspeciales | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Invalid card number"

    Scenario: Validar que al apretar el botón pagar habiendo dejado el campo tarjeta vacio aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento       | Codigo              |
            |            | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Invalid card number"

    Scenario: Validar que al apretar el botón pagar habiendo ingresado menos de 16 números en el campo tarjeta aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta      | FechaVencimiento       | Codigo              |
            | TarjetaInvalida | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "Invalid card number"


    Scenario: Validar que al apretar el botón pagar habiendo ingresado menos de 4 números en el campo venc. aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo              |
            | NroTarjetaValido | TresNumeros      | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Invalid expiration date"


    Scenario: Verificar que al apretar el botón pagar habiendo ingresado letras en el campo vencimiento aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo              |
            | NroTarjetaValido | TresLetras       | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Invalid expiration date"


    Scenario: Verificar que al apretar el botón pagar habiendo ingresado caract. especiales en el campo vencimiento aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento     | Codigo              |
            | NroTarjetaValido | CaracteresEspeciales | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Invalid expiration date"

    Scenario: Verificar que al apretar el boton pagar habiendo ingresado letras en el campo cod de seguridad aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo     |
            | NroTarjetaValido | FechaVencimientoValida | TresLetras |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

    Scenario: Verificar que al ingresar menos de 3 caracteres en el campo cod seguridad aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo     |
            | NroTarjetaValido | FechaVencimientoValida | DosNumeros |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

    Scenario: Verificar que al dejar el campo codigo seguridad vacio me aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo |
            | NroTarjetaValido | FechaVencimientoValida |        |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

    Scenario: Verificar que al ingresar caracteres especiales en el campo cod seguridad aparezca un cartel de error
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo               |
            | NroTarjetaValido | FechaVencimientoValida | CaracteresEspeciales |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

