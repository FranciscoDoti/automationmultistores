@itau
Feature: login

    Feature Description
    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Iniciar sesion"
        And Hago click en "usuario"
        And Hago click en "contraseña"
        Then Verifico que el campo "contraseña" contenga el texto "bla"