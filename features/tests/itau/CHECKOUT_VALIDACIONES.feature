@itau
Feature: CHECKOUT_VALIDACIONES

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "NoSoyRobot"
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "ContinuarMetodoEnvio"
        And Hago click en "AceptoTerminosYCondiciones"
        And Hago click en "SinRegistroTarjeta"


    Scenario: Validar propiedades de campo Número de tarjeta: Cartel de error ingresando letras
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento       | Codigo              |
            | TresLetras | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Invalid card number"

    Scenario: Validar propiedades de campo Número de tarjeta: Cartel de error ingresando caracteres especiales
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta           | FechaVencimiento       | Codigo              |
            | CaracteresEspeciales | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Invalid card number"

    Scenario: Validar propiedades de campo Número de tarjeta: Cartel de error dejando el campo vacio
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento       | Codigo              |
            |            | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Invalid card number"

    Scenario: Validar propiedades de campo Número de tarjeta: Cartel de error ingresando menos de 16 números
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta      | FechaVencimiento       | Codigo              |
            | TarjetaInvalida | FechaVencimientoValida | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "Invalid card number"


    Scenario: Validar propiedades de campo Vencimiento: Cartel de error ingresando menos de 4 números
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo              |
            | NroTarjetaValido | TresNumeros      | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Invalid expiration date"


    Scenario: Validar propiedades de campo Vencimiento: Cartel de error ingresando letras
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo              |
            | NroTarjetaValido | TresLetras       | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Invalid expiration date"


    Scenario: Validar propiedades de campo Vencimiento: Cartel de error ingresando caracteres especiales
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento     | Codigo              |
            | NroTarjetaValido | CaracteresEspeciales | CodigoTarjetaValido |
        And Hago click en "Pagar"
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Invalid expiration date"

    Scenario: Validar propiedades de campo Código de seguridad: Cartel de error ingresando letras
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo     |
            | NroTarjetaValido | FechaVencimientoValida | TresLetras |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

    Scenario: Validar propiedades de campo Código de seguridad: Cartel de error ingresando menos de 3 caracteres
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo     |
            | NroTarjetaValido | FechaVencimientoValida | DosNumeros |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

    Scenario: Validar propiedades de campo Código de seguridad: Cartel de error dejando el campo vacio
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo |
            | NroTarjetaValido | FechaVencimientoValida |        |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."

    Scenario: Validar propiedades de campo Código de seguridad: Cartel de error ingresando caracteres especiales
        When Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento       | Codigo               |
            | NroTarjetaValido | FechaVencimientoValida | CaracteresEspeciales |
        And Hago click en "Pagar"
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "The entered card is invalid. Please, verify your card information and try again."