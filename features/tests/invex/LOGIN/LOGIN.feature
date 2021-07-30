@LOGIN
Feature: LOGIN

    Background: Pasos comunes
        Given Abro la pagina "invex"
        And Leo los datos de "invex"
        When Paso el mouse por encima de "IniciarSesion"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "HeaderPage" contenga el texto "INICIA SESIÓN CON TU CUENTA"

    Scenario: TC_LOGIN_002_Validar inicio de sesión con datos correctos de usuario registrado.
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config

    Scenario: TC_LOGIN_003_Validar propiedades del campo usuario.
        When Lleno el campo "Email" con "usuarioInvalido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "FormatoInvalido" contenga el texto "Formato no válido."

    Scenario: TC_LOGIN_006_Intentar realizar ingreso con e-mail incorrecto y contraseña correcta.
        When Lleno el campo "Email" con "usuarioIncorrecto" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "ErrorAutenticacion" contenga el texto "Error de autenticación."

    Scenario: TC_LOGIN_007_Validar que no me permita iniciar sesión si ingreso con e-mail/usuario incorrecto y contraseña incorrecta.
        When Lleno el campo "Email" con "usuarioIncorrecto" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordIncorrecto" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "ErrorAutenticacion" contenga el texto "Error de autenticación."

    Scenario: TC_LOGIN_015_Intentar realizar inicio de sesión con campos vacíos.
        And Hago click en "Login"
        Then Verifico que el campo "EmailInvalido" contenga el texto "Campo requerido"
        And Verifico que el campo "ContraseñaInvalida" contenga el texto "Campo requerido"

    Scenario: TC_LOGIN_017_Validar que el botón de revelar contraseña muestre los caracteres ocultos.
        Then Valido propiedades del campo "Contraseña"

    Scenario: TC_LOGIN_021_Verificar ingreso al formulario de registro al presionar el botón Registrate
        And Hago click en "CrearCuenta"
        Then Verifico que el campo "HeaderPage" contenga el texto "CREAR UNA CUENTA"
        Then Verifico que el elemento "FormularioRegistro" este habilitado

    Scenario: TC_LOGIN_022_Verificar vuelta atrás de página al iniciar sesión.
        And Hago click en "CrearCuenta"
        Then Verifico que el campo "HeaderPage" contenga el texto "CREAR UNA CUENTA"
        Then Verifico que el elemento "FormularioRegistro" este habilitado
        Given Retroceder en la página
        Then Verifico que el campo "HeaderPage" contenga el texto "INICIA SESIÓN CON TU CUENTA"

    Scenario: TC_LOGIN_023_Verificar cierre de sesión.
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        And Hago click en "UsuarioLogueado"
        And Hago click en "Salir"
        Then Verifico que el campo "HeaderPage" contenga el texto "INICIA SESIÓN CON TU CUENTA"