@itau
Feature: itauLogin

    @noLoguea
    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error de autenticación."

    Scenario:   Validar inicio de sesión con datos correctos de usuario registrado.
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "NoSoyRobot"
        And Hago click en "IniciarSesion"

    Scenario: Validar inicion de sesion con e-mail correcto y contraseña incorrecta.
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        And Lleno el campo "Contraseña" con "contraseñaIncorrecta"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error de autenticación."


    Scenario: Validar inicio de sesion con e-mail inválido y contraseña inválida.
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "ksfiwjfpi"
        And Lleno el campo "Contraseña" con "ksdjfif"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error de autenticación."

