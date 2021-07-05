@TIENDACLIC
@LOGIN

Feature: LOGIN

Background: Pasos comunes
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
     And Hago click en "IniciaSesion"

Scenario: Logueo con credenciales correctas de tiendaclick
    And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
    And Lleno el campo "Clave" con "claveValida" yendo a buscar la config
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Mi cuenta" contenga el texto "MI CUENTA"


Scenario: Logueo con usuario incorrecto de tiendaclick
    And Lleno el campo "Email" con "pruebaIncorrecta@gmail.com"
    And Lleno el campo "Clave" con "claveValida" yendo a buscar la config
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "Error"


Scenario: Logueo con clave incorrecta de tiendaclick
    And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
    And Lleno el campo "Clave" con "claveIncorrecta"
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "Error"

Scenario: Logueo sin ingresar campo email
    And Lleno el campo "Email" con ""
    And Lleno el campo "Clave" con "claveValida" yendo a buscar la config
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "Se requiere una dirección"

Scenario: Logueo sin ingresar campo clave
    And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
    And Lleno el campo "Clave" con ""
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "contraseña es requerida"

Scenario: Verificar link de restablecer contraseña
    And Hago click en "Olvide clave"
    Then Verifico que el campo "olvidoClaveValidacion" contenga el texto "OLVIDÓ SU CONTRASEÑA"

Scenario: Verificar link registrate
    And Lleno el campo "Nueva cuenta correo" con "pruebaQA@gmail.com"
    And Hago click en "Registrarme"
    And Verifico que el campo "Datos personales" contenga el texto "DATOS PERSONALE"

Scenario: validar propiedades campo clave
    When valido las propiedades de campo clave

Scenario: validar propiedades campo email
    When valido las propiedades de campo email