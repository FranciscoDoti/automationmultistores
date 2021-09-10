@LOGIN
Feature: LOGIN

    Background: Pasos comunes
        Given Abro la pagina "scotia"
        And Leo los datos de "scotia"
        And Hago click en "Acceder"
        Then Verifico que el elemento "FormularioInicioSesion" este habilitado

    Scenario: TC_LOGIN_002_Validar inicio de sesión con datos correctos de usuario registrado.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config

    Scenario: TC_LOGIN_004_Validar propiedades del campo contraseña.
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ErrorCampoUsuario" contenga el texto "Campo requerido"

    Scenario: TC_LOGIN_006_Intentar realizar ingreso con e-mail incorrecto y contraseña correcta.
        When Lleno el campo "Usuario" con "apersqatestingIncorrecto@gmail.com"
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "CartelErrorAutenticacion" contenga el texto "Error de autenticación."

    Scenario: TC_LOGIN_007_Validar que no me permita iniciar sesión si ingreso con e-mail/usuario incorrecto y contraseña incorrecta.
        When Lleno el campo "Usuario" con "apersqatestingIncorrecto@gmail.com"
        When Lleno el campo "Contraseña" con "prueba01$"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "CartelErrorAutenticacion" contenga el texto "Error de autenticación."

    Scenario: TC_LOGIN_015_Intentar realizar inicio de sesión con campos vacíos.
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ErrorCampoUsuario" contenga el texto "Campo requerido"
        And Verifico que el campo "ErrorCampoContraseña" contenga el texto "Campo requerido"

    Scenario: TC_LOGIN_017_Validar que el botón de revelar contraseña muestre los caracteres ocultos.
        Then Valido propiedades del campo "Contraseña"

    Scenario: TC_LOGIN_022_Verificar vuelta atrás de página al iniciar sesión.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        Given Retroceder en la página
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config

    Scenario: TC_LOGIN_023_Verificar cierre de sesión.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        And Hago click en "CerrarSesión"
        And Verifico que el elemento "Acceder" este habilitado