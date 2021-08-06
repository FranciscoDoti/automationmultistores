@bice
@LOGIN
Feature: LOGIN

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"

    
    Scenario: TC_LOGIN_002 Validar inicio de sesión con datos correctos de usuario registrado.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"
        Then Verifico que el campo "SpanCuenta" contenga el texto "NombreUsuario" de la config

    #PRUEBA
    Scenario: TC_LOGIN_005 Validar que no me permita iniciar sesión si ingreso con e-mail correcto y contraseña incorrecta.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "asd123"
        And Hago click en "LoginAcceder"
        Then Verifico que el campo "AlertErrorLogin" contenga el texto "Error de autenticación."

    
    Scenario: TC_LOGIN_006 Validar que no me permita iniciar sesion si sesión con e-mail incorrecto y contraseña correcta.
        When Lleno el campo "Usuario" con "usuarioIncorrecto" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"
        Then Verifico que el campo "AlertErrorLogin" contenga el texto "Error de autenticación."

    
    Scenario: TC_LOGIN_007 Validar que no me permita iniciar sesion si sesión con e-mail incorrecto y contraseña incorrecta.
        When Lleno el campo "Usuario" con "usuarioIncorrecto" yendo a buscar la config
        And Lleno el campo "Contraseña" con "asd123"
        And Hago click en "LoginAcceder"
        Then Verifico que el campo "AlertErrorLogin" contenga el texto "Error de autenticación."

    #TC_LOGIN_011 es igual a los login 04 y 05
    #TC_LOGIN_012 es igual a los login 04 y 05

    
    Scenario: TC_LOGIN_015 Validar que no me permita iniciar sesión si ingreso con campos vacíos.
        And Hago click en "LoginAcceder"
        Then Verifico que exista el elemento "AlertEmailRequeridoLogin"
        Then Verifico que exista el elemento "AlertPasswordRequeridoLogin"

     #TC_LOGIN_016 Validar el bloqueo de la cuenta tras x intentos fallidos al ingresar contraseña incorrecta.
     #Se pospone puesto que tenemos una cuenta y bloquearla traba el desarrollo

    
    Scenario: TC_LOGIN_017 Validar que el botón de revelar contraseña muestre los caracteres ocultos.
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "MostrarContraseña"
        Then Verifico que exista el elemento "ContraseñaVisible"

    
    Scenario: TC_LOGIN_023 Verificar cierre de sesión.
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"
        And Hago click en "SpanCuenta"
        And Hago click en "CerrarSesion"
        Then Verifico que exista el elemento "IniciarSesion"