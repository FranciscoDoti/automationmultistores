Feature: Login tiendaclick

Background: Pasos comunes
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"

Scenario: Logueo con credenciales correctas de tiendaclick
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Clave" con "prueba01"
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Mi cuenta" contenga el texto "MI CUENTA"


Scenario: Logueo con usuario incorrecto de tiendaclick
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "pruebaIncorrecta@gmail.com"
    And Lleno el campo "Clave" con "prueba01"
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "Error"


Scenario: Logueo con clave incorrecta de tiendaclick
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Clave" con "claveIncorrecta"
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "Error"

Scenario: Logueo sin ingresar campo email
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con ""
    And Lleno el campo "Clave" con "prueba01"
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "Se requiere una dirección"

Scenario: Logueo sin ingresar campo clave
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Clave" con ""
    And Hago click en "Inicio sesion"
    Then Verifico que el campo "Error inicio de sesion" contenga el texto "contraseña es requerida"

Scenario: Verificar link de restablecer contraseña
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Hago click en "Olvide clave"
    Then Verifico que el campo "olvidoClaveValidacion" contenga el texto "OLVIDÓ SU CONTRASEÑA"

Scenario: Verificar link registrate
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Nueva cuenta correo" con "pruebaQA@gmail.com"
    And Hago click en "Registrarme"
    And Verifico que el campo "Datos personales" contenga el texto "DATOS PERSONALE"

