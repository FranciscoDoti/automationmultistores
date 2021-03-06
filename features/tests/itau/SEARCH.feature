@itau
Feature: SEARCH

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"

    Scenario: TC_SEARCH_001 Validar una búsqueda exitosa
        When Lleno el campo "BarraBuscadora" con "Juguera"
        And Hago click en "Buscar"
        Then Verifico que el campo "ProductoCorrectoPorBusqueda" contenga el texto "Juguera"

    Scenario: TC_SEARCH_002	Validar propiedades del campo de búsquedas al ingresar caracteres especiales
        When Lleno el campo "BarraBuscadora" con "$#%"
        And Hago click en "Buscar"
        Then Verifico que el campo "CartelErrorBusqueda" contenga el texto "Oops, no encontramos lo que buscabas :("


    Scenario: TC_SEARCH_003	Validar propiedades del campo de búsquedas al dejar el campo vacío
        When Hago click en "BarraBuscadora"
        And Hago click en "Buscar"
        Then Verifico que el campo "CartelErrorBusqueda" contenga el texto "Oops, no encontramos lo que buscabas :("


    Scenario: TC_SEARCH_004	Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente
        When Lleno el campo "BarraBuscadora" con "Licuadora"
        And Hago click en "Buscar"
        Then Verifico que el campo "ProductoEncontradoCorrecto" contenga el texto "Licuadora"

    Scenario: TC_SEARCH_005	Validar que al presionar la tecla Enter se realice la búsqueda correspondiente
        When Lleno el campo "BarraBuscadora" con "Licuadora"
        When Presiona tecla ENTER en elemento "Buscar"
        Then Verifico que el campo "ProductoEncontradoCorrecto" contenga el texto "Licuadora"

    Scenario: TC_SEARCH_006	Validar que las opciones de autocompletar coincidan con el texto ingresado en el campo de búsquedas
        When Lleno el campo "BarraBuscadora" con "cafe"
        Then Verifico que los elementos "ListaAutocomplete" contengan el texto "cafe"

    Scenario: TC_SEARCH_007	Validar que se despliegue el listado de búsquedas sugeridas al escribir en el campo de búsquedas
        When Lleno el campo "BarraBuscadora" con "Cafet"
        Then Verifico que el elemento "ListaAutocomplete" este habilitado

    Scenario: TC_SEARCH_008	Validar que se pueda navegar (scroll) por el listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Cafet"
        And  Scrolleo hasta el elemento "UltimaOpcionDesplegable" y hago click
        
    Scenario:TC_SEARCH_011	Validar que se pueda seleccionar con el teclado un artículo aleatorio del listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Caf"
        And Scrolleo hasta el elemento "UltimaOpcionDesplegable"
        And Presiona tecla ENTER en elemento "UltimaOpcionDesplegable"
        Then Verifico que el elemento "UltimaOpcionDesplegable" este habilitado

    Scenario: TC_SEARCH_013 Validar caracteres minimos para desplegar el listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Caf"
        Then Verifico que el elemento "ListaAutocomplete" este habilitado