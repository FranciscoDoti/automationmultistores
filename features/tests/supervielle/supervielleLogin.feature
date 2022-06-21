@supervielle @PRUEBA
Feature: supervielleLogin

    @noLoguea
    Scenario: Validar que no se pueda iniciar sesión con un usuario no registrado
        Given Abro la pagina "supervielle"
        When Hago click en "Botoncito"
        And Hago click en "cartelito"
        And Hago click en "bñakdsñald"
        Obtengo el texto del elemento "ReemplazarElemento"  y lo guardo en la variable "CrearNombreDeNuevaVariable"
        
        #And Leo los datos de "supervielle"
        #And Hago click en "IniciaSesion"
        #And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        #And Lleno el campo "Contraseña" con "contraseñaFalsa"
        #And Hago click en "IniciarSesion"
        Then Verifico que el campo "MensajeError" contenga el texto "Error 1"


    Scenario: Validar que se pueda iniciar sesión con un usuario valido
        Given Abro la pagina "supervielle"
        #And Leo los datos de "supervielle"
        #And Hago click en "IniciaSesion"
        #And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        #And Lleno el campo "Contraseña" con "/MXPIce1"
        #And Hago click en "IniciarSesion"
        #Then Verifico que el campo "Cuenta" contenga el texto "LQAAUTOMATION"



