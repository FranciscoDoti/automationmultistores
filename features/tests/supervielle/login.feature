@supervielle
Feature: supervielleLogin

    @noLoguea
    Scenario: Validar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordFalsa" yendo a buscar a la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"


    Scenario: Validar que se pueda iniciar sesión con un usuario valido
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "Cuenta" contenga el texto "LQAAUTOMATION"



