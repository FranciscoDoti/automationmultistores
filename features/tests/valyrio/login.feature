Feature: Login

    Background: Valyrio
        Given Abro la pagina "valyrio"
        Given Leo los datos de "valyrio"
        When Hago click en "IniciaSesion"

    Scenario: Logueo con credenciales correctas de valyrio
        And Lleno el campo "Email" con "desarrollo@aper.com"
        And Lleno el campo "Clave" con "98Ab12.."
        And Hago click en "Inicio sesion"
        Then Verifico que el campo "Mi cuenta" contenga el texto "SU CUENTA"


    Scenario: Logueo con usuario incorrecto de valyrio
        And Lleno el campo "Email" con "pruebaIncorrecta@gmail.com"
        And Lleno el campo "Clave" con "98Ab12.."
        And Hago click en "Inicio sesion"
        Then Verifico que el campo "Error inicio de sesion" contenga el texto "Error"


    Scenario: Logueo con clave incorrecta de valyrio
        And Lleno el campo "Email" con "desarrollo@aper.com"
        And Lleno el campo "Clave" con "claveInvalida123"
        And Hago click en "Inicio sesion"
        Then Verifico que el campo "Error inicio de sesion" contenga el texto "Error"

    Scenario: Logueo sin ingresar campo email
        And Lleno el campo "Email" con ""
        And Lleno el campo "Clave" con "98Ab12.."
        And Hago click en "Inicio sesion"
        Then Verifico que el campo "Campo requerido" contenga el texto "Campo requerido"

    Scenario: Logueo sin ingresar campo clave
        And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Clave" con ""
        And Hago click en "Inicio sesion"
        Then Verifico que el campo "Campo requerido" contenga el texto "Campo requerido"

    Scenario: Verificar link de restablecer contraseña
        And Hago click en "Olvide clave"
        Then Verifico que el campo "olvidoClaveValidacion" contenga el texto "OLVIDÓ SU CONTRASEÑA"

    Scenario: Verificar link registrate
        And Hago click en "Nueva cuenta correo"
        Then Verifico que el campo "Crear cuenta" contenga el texto "CREAR UNA CUENT"


    Scenario: validar propiedades campo clave
        When Valido que el campo "Clave" sea de propiedad "password"

    
    Scenario: validar propiedades campo email
        When Valido que el campo "Email" sea de propiedad "email"