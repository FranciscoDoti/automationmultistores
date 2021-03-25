Feature: login

    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "NosoyRobot"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error de autenticación."

