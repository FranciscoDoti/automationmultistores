@LOGIN
Feature: LOGIN

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login

    # Scenario: Validar propiedades del campo usuario.
    #    And Lleno el campo "Usuario" con ""
    #   And Hago click en "IniciarSesion"

    #Scenario: Validar propiedades del campo contraseña.

    Scenario: TC_LOGIN_002_Validar inicio de sesión con datos correctos de usuario registrado.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config

    Scenario: TC_LOGIN_005_Intentar realizar ingreso con e-mail correcto y contraseña incorrecta.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordIncorrecto" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ErrorInicioSesion" contenga el texto "No reconocemos esa combinacion de usuario y clave. Por favor revisalos e intenta nuevamente."

    Scenario: TC_LOGIN_006_Intentar realizar ingreso con e-mail incorrecto y contraseña correcta.
        When Lleno el campo "Usuario" con "usuarioIncorrecto" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ErrorInicioSesion" contenga el texto "No reconocemos esa combinacion de usuario y clave. Por favor revisalos e intenta nuevamente."

    Scenario: ITC_LOGIN_011_ntentar realizar ingreso con e-mail inválido y contraseña válida.
        When Lleno el campo "Usuario" con "usuarioInvalido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        Then Verifico que el campo "UsuarioInvalido" contenga el texto "Por favor, ingresá letras y numeros"

    Scenario: TC_LOGIN_012_Intentar realizar ingreso con e-mail válido y contraseña inválida.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordInvalido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ContraseñaInvalida" contenga el texto "Por favor, ingresá 8 caracteres."

    Scenario: TC_LOGIN_015_Intentar realizar inicio de sesión con campos vacíos.
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "UsuarioInvalido" contenga el texto "Por favor, ingresá tu usuario."
        And Verifico que el campo "ContraseñaInvalida" contenga el texto "Por favor, ingresá tu clave."
        
    Scenario: TC_LOGIN_023_Verificar cierre de sesión.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
        And Hago click en "NombreUsuario"
        And Hago click en "CerrarSesion"
        Then Verifico que el campo "VerificoCierreSesion" contenga el texto "Ingresar"