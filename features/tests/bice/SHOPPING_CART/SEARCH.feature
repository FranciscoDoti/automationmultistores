@bice
@SEARCH
Feature: SEARCH

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"

    Scenario: TC_SEARCH_001 Validar una búsqueda exitosa
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Licuadora"
        And Hago click en "Lupita"
        Then Verifico que el campo "ProductoUno" contenga el texto "LICUADORA"


    Scenario: TC_SEARCH_002 Validar propiedades del campo de búsquedas al ingresar caracteres especiales
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "$#%"
        And Hago click en "Lupita"
        Then Verifico que el campo "CartelBusquedaInexistente" contenga el texto "Lamentamos las molestias"


    Scenario: TC_SEARCH_004 Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Licuadora"
        And Hago click en "Lupita"
        Then Verifico que el campo "ProductoUno" contenga el texto "LICUADORA"

    Scenario: TC_SEARCH_005 Validar que al presionar la tecla Enter se realice la búsqueda correspondiente
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Licuadora"
        And Presiona tecla ENTER en elemento "Lupita"
        Then Verifico que el campo "ProductoUno" contenga el texto "LICUADORA"


    Scenario: TC_SEARCH_006 Validar que las opciones de autocompletar coincidan con el texto ingresado en el campo de búsquedas
        When Lleno el campo "BarraBuscadora" con "cafe"
        Then Verifico que los elementos "ListaAutocomplete" contengan el texto "cafe"

    Scenario: TC_SEARCH_007 Validar que se despliegue el listado de búsquedas sugeridas al escribir en el campo de búsquedas
        When Lleno el campo "BarraBuscadora" con "Cafet"
        Then Verifico que el elemento "ListaAutocomplete" este habilitado

    Scenario: TC_SEARCH_008 Validar que se pueda navegar (scroll) por el listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Cafe"
        Then Verifico que el elemento "UltimaOpcionDesplegable" este habilitado



    Scenario: TC_SEARCH_011 Validar que se pueda seleccionar con el teclado un artículo aleatorio del listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Caf"
        And Scrolleo hasta el elemento "UltimaOpcionDesplegable"
        And Presiona tecla ENTER en elemento "UltimaOpcionDesplegable"
        Then Verifico que el elemento "UltimaOpcionDesplegable" este habilitado


    Scenario: TC_SEARCH_013 Validar caracteres minimos para desplegar el listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Caf"
        Then Verifico que el elemento "ListaAutocomplete" este habilitado