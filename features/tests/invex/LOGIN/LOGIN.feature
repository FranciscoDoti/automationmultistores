@LOGIN
Feature: LOGIN

    Background: Pasos comunes
        Given Abro la pagina "invex"
        And Leo los datos de "invex"
        And Hago click en "IniciarSesion"

    Scenario: TC_LOGIN_002_Validar inicio de sesión con datos correctos de usuario registrado.
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config

    Scenario: TC_LOGIN_006_Intentar realizar ingreso con e-mail incorrecto y contraseña correcta.
        When Lleno el campo "Email" con "usuarioIncorrecto" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "ErrorAutenticacion" contenga el texto "Error de autenticación."

    Scenario: ITC_LOGIN_011_ntentar realizar ingreso con e-mail inválido y contraseña válida.
        When Lleno el campo "Email" con "usuarioInvalido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "FormatoInvalido" contenga el texto "Formato no válido."

    Scenario: TC_LOGIN_015_Intentar realizar inicio de sesión con campos vacíos.
        And Hago click en "Login"
        Then Verifico que el campo "EmailInvalido" contenga el texto "Campo requerido"
        And Verifico que el campo "ContraseñaInvalida" contenga el texto "Campo requerido"

    Scenario: TC_LOGIN_021_Verificar ingreso al formulario de registro al presionar el botón Registrate
        And Hago click en "CrearCuenta"
        Then Verifico que el campo "HeaderPage" contenga el texto "CREAR UNA CUENTA"
        Then Verifico que el elemento "FormularioRegistro" este deshabilitado

    Scenario: TC_LOGIN_023_Verificar cierre de sesión.
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        And Hago click en "UsuarioLogueado"
        And Hago click en "Salir"
        Then Verifico que el campo "HeaderPage" contenga el texto "INICIA SESIÓN CON TU CUENTA"