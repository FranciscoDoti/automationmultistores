@supervielle
@LOGIN

Feature: supervielleLogin

    @noLoguea
    Scenario: TC_LOGIN_007 Validar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordFalsa" yendo a buscar a la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"


    Scenario: TC_LOGIN_002 Validar que se pueda iniciar sesión con un usuario valido
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "Cuenta" contenga el texto "LQAAUTOMATION"


    Scenario: Validar que no se pueda iniciar sesion  con e-mail correcto y contraseña incorrecta.
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordFalsa" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"

    Scenario: Validar que no se pueda iniciar sesion con e-mail incorrecto y contraseña correcta.
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordFalsa" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"

    Scenario: Validar que no se pueda iniciar sesion con campos vacíos.
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordFalsa" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"

    Scenario: Validar que no me permita ingresar sesion con email valido y contraseña menor a cuatro caracteres
      Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "tresCaracteres" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordFalsa" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"

    Scenario: Validar cierre de sesión.
