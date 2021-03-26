@supervielle
Feature: login


    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"

    Scenario: Verificar que se pueda iniciar sesión con un usuario valido
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "Cuenta" contenga el texto "LQAAUTOMATION"



