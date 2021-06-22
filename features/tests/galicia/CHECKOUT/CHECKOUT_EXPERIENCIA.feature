@PRUEBA
Feature: CHECKOUT_EXPERIENCIA

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"

    Scenario: TC_CHECKOUT_147 Validar que al calificar con el emoji me enoja me aparezca un cartel de exito
        When Hago click en "Sugerencias"
        And Hago click en "MeEnoja"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "EnviarSugerencia"
        Then Verifico que el campo "CartelExitoSugerencia" contenga el texto "¡Muchas gracias por compartir tus comentarios! Si tuviste algún problema para canjear comunicate al 0810 444 6500 o ingresá a la sección de Ayuda."


    Scenario: TC_CHECKOUT_148 Validar que al calificar con el emoji no me gusta me aparezca un cartel de exito
        When Hago click en "Sugerencias"
        And Hago click en "NoMeGusta"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "EnviarSugerencia"
        Then Verifico que el campo "CartelExitoSugerencia" contenga el texto "¡Muchas gracias por compartir tus comentarios! Si tuviste algún problema para canjear comunicate al 0810 444 6500 o ingresá a la sección de Ayuda."

    Scenario: TC_CHECKOUT_149 Validar que al calificar con el emoji neutral me aparezca un cartel de exito
        When Hago click en "Sugerencias"
        And Hago click en "Neutral"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "EnviarSugerencia"
        Then Verifico que el campo "CartelExitoSugerencia" contenga el texto "¡Muchas gracias por compartir tus comentarios! Si tuviste algún problema para canjear comunicate al 0810 444 6500 o ingresá a la sección de Ayuda."

    Scenario: TC_CHECKOUT_150 Validar que al calificar con el emoji me gusta me aparezca un cartel de exito
        When Hago click en "Sugerencias"
        And Hago click en "MeGusta"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "EnviarSugerencia"
        Then Verifico que el campo "CartelExitoSugerencia" contenga el texto "¡Muchas gracias por compartir tus comentarios! Si tuviste algún problema para canjear comunicate al 0810 444 6500 o ingresá a la sección de Ayuda."

    Scenario:TC_CHECKOUT_151 Validar que al calificar con el emoji me encanta me aparezca un cartel de exito
        When Hago click en "Sugerencias"
        And Hago click en "MeEncanta"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "EnviarSugerencia"
        Then Verifico que el campo "CartelExitoSugerencia" contenga el texto "¡Muchas gracias por compartir tus comentarios! Si tuviste algún problema para canjear comunicate al 0810 444 6500 o ingresá a la sección de Ayuda."


    Scenario: TC_CHECKOUT_152 Validar que pueda ingresar texto al escribir una sugerencia
        When Hago click en "Sugerencias"
        And Hago click en "NoMeGusta"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "EnviarSugerencia"
        Then Verifico que el campo "CartelExitoSugerencia" contenga el texto "¡Muchas gracias por compartir tus comentarios! Si tuviste algún problema para canjear comunicate al 0810 444 6500 o ingresá a la sección de Ayuda."


    Scenario:TC_CHECKOUT_153 Validar que se pueda seleccionar un recuadro de la pagina al generar una sugerencia
        When Hago click en "Sugerencias"
        And Hago click en "NoMeGusta"
        And Lleno los siguientes campos
            | TuExperiencia | RANDOM |
        And Hago click en "SeleccionarRecuadro"
        Then Verifico que el campo "CartelSeleccionarRecuadro" contenga el texto "Selecciona un elemento de la página."