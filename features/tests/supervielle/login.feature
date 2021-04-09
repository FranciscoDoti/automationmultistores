@supervielle
Feature: supervielleLogin

    @noLoguea
    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "jhernandez@aper.com"
        And Lleno el campo "Contraseña" con "11112222"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"


    Scenario: Verificar que se pueda iniciar sesión con un usuario valido
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "jhernandez@aper.com"
        And Lleno el campo "Contraseña" con "11112222"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "Cuenta" contenga el texto "LQAAUTOMATION"



