@itau
Feature: comprasCredito


    Scenario: Realizar una compra con tarjeta de crédito sin cupón de descuento
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | 0821             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "CartelCompraExitosa" contenga el texto "Hemos procesado el pago y se te ha enviado un correo"


    Scenario: Verificar que al apretar el botón pagar habiendo ingresado letras en el campo tarjeta aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento | Codigo |
            | AAAAAAAAA  | 0821             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Número de tarjeta inválido"

    Scenario: Verificar que al apretar el botón pagar habiendo ingresado caract. especiales en el campo tarjeta aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento | Codigo |
            | %&$!"·"    | 0821             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Número de tarjeta inválido"

    Scenario: Verificar que al apretar el botón pagar habiendo dejado el campo tarjeta vacio aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta | FechaVencimiento | Codigo |
            |            | 0821             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "ErrorNumTarjeta" contenga el texto "Número de tarjeta inválido"

    Scenario: Verificar que al apretar el botón pagar habiendo ingresado menos de 16 números en el campo tarjeta aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "NosoyRobot"
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta  | FechaVencimiento | Codigo |
            | 54186301100 | 0821             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "La tarjeta ingresada es inválida. Favor, verificar los datos ingresados e intenta nuevamente."

    Scenario: Verificar que al apretar el botón pagar habiendo ingresado menos de 4 números en el campo venc. aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | 082              | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Fecha de vencimiento inválida"

    Scenario: Verificar que al apretar el botón pagar habiendo ingresado letras en el campo vencimiento aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | AAAA             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Fecha de vencimiento inválida"

    Scenario: Verificar que al apretar el botón pagar habiendo ingresado caract. especiales en el campo vencimiento aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | $%#&             | 258    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "VencimientoInvalido" contenga el texto "Fecha de vencimiento inválida"

    Scenario: Verificar que al apretar el boton pagar habiendo ingresado letras en el campo cod de seguridad aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | 0821             | AAA    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "La tarjeta ingresada es inválida. Favor, verificar los datos ingresados e intenta nuevamente."

    Scenario: Verificar que al ingresar menos de 3 caracteres en el campo cod seguridad aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | 0821             | 25     |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "La tarjeta ingresada es inválida. Favor, verificar los datos ingresados e intenta nuevamente."

    Scenario: Verificar que al dejar el campo codigo seguridad vacio me aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | 0821             |        |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "La tarjeta ingresada es inválida. Favor, verificar los datos ingresados e intenta nuevamente."

    Scenario: Verificar que al ingresar caracteres especiales en el campo cod seguridad aparezca un cartel de error
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "Comprar" con Executor
        And Hago click en "Continuar" con Executor
        And Hago click en "ContinuarMetodoEnvio" con Executor
        And Hago click en "AceptoTerminosYCondiciones" con Executor
        And Hago click en "SinRegistroTarjeta" con Executor
        And Cargo la siguiente informacion de la tarjeta
            | NroTarjeta       | FechaVencimiento | Codigo |
            | 5418630110000014 | 0821             | #$%    |
        And Hago click en "Pagar" con Executor
        Then Verifico que el campo "TarjetaInvalida" contenga el texto "La tarjeta ingresada es inválida. Favor, verificar los datos ingresados e intenta nuevamente."

