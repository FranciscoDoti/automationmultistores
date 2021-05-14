@icbc
Feature: icbcLogin

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login

    # Scenario: Validar propiedades del campo usuario.
    #    And Lleno el campo "Usuario" con ""
    #   And Hago click en "IniciarSesion"

    #Scenario: Validar propiedades del campo contraseña.

    Scenario: Validar inicio de sesión con datos correctos de usuario registrado.
        And Lleno el campo "Usuario" con "icbcclub06"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal


    Scenario: Intentar realizar ingreso con e-mail correcto y contraseña incorrecta.
        And Lleno el campo "Usuario" con "icbcclub06"
        And Lleno el campo "Contraseña" con "prueba03"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ErrorInicioSesion" contenga el texto "No reconocemos esa combinacion de usuario y clave. Por favor revisalos e intenta nuevamente."

    Scenario: Intentar realizar ingreso con e-mail incorrecto y contraseña correcta.
        And Lleno el campo "Usuario" con "icbcclub10"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ErrorInicioSesion" contenga el texto "No reconocemos esa combinacion de usuario y clave. Por favor revisalos e intenta nuevamente."


    Scenario: Intentar realizar ingreso con e-mail inválido y contraseña válida.
        And Lleno el campo "Usuario" con "555555555555555"
        And Lleno el campo "Contraseña" con "prueba01"
        Then Verifico que el campo "UsuarioInvalido" contenga el texto "Por favor, ingresá letras y numeros"

    Scenario: Intentar realizar ingreso con e-mail válido y contraseña inválida.
        And Lleno el campo "Usuario" con "icbcclub06"
        And Lleno el campo "Contraseña" con "888"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "ContraseñaInvalida" contenga el texto "Por favor, ingresá 8 caracteres."


    Scenario: Intentar realizar inicio de sesión con campos vacíos.
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "UsuarioInvalido" contenga el texto "Por favor, ingresá tu usuario."
        And Verifico que el campo "ContraseñaInvalida" contenga el texto "Por favor, ingresá tu clave."

    Scenario: Verificar cierre de sesión.
        And Lleno el campo "Usuario" con "icbcclub06"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        And Hago click en "NombreUsuario"
        And Hago click en "CerrarSesion"
        Then Verifico que el campo "VerificoCierreSesion" contenga el texto "Ingresar"