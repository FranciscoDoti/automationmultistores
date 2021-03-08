@itau
Feature: login

    Feature Description
    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Iniciar Sesion"
        And Hago click en "usuario"
        And Hago click en "contraseña"

    
    
