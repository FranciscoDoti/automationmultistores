
Feature: SEARCH

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"

    Scenario: TC_SEARCH_001 Validar una búsqueda exitosa
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Cafetera"
        And Hago click en "Buscar"
        Then Verifico que el campo "ProductoEncontradoCorrecto" contenga el texto "Cafetera"

    Scenario: TC_SEARCH_002 Validar propiedades del campo de búsquedas al ingresar caracteres especiales
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "%$"
        And Hago click en "Buscar"
        Then Verifico que el campo "CartelBusquedaInexistente" contenga el texto "¿No encontraste lo que buscabas?"

    Scenario: TC_SEARCH_003 Validar propiedades del campo de búsquedas al dejar el campo vacío
        When Hago click en "BarraBuscadora"
        And Hago click en "Buscar"
        Then Verifico que el campo "CartelBusquedaInexistente" contenga el texto "¿No encontraste lo que buscabas?"

    Scenario: TC_SEARCH_004 Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Cafetera"
        And Hago click en "Buscar"
        Then Verifico que el campo "ProductoEncontradoCorrecto" contenga el texto "Cafetera"

    Scenario: TC_SEARCH_005 Validar que al presionar la tecla Enter se realice la búsqueda correspondiente
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Cafetera"
        And Presiona tecla ENTER en elemento "Buscar"
        Then Verifico que el campo "ProductoEncontradoCorrecto" contenga el texto "Cafetera"

    Scenario: TC_SEARCH_006 Validar que las opciones de autocompletar coincidan con el texto ingresado en el campo de búsquedas
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Caf"
        Then Verifico que el elemento "PrimerResultadoAutocomplete" exista

    Scenario: TC_SEARCH_007 Validar que se despliegue el listado de búsquedas sugeridas al escribir en el campo de búsquedas
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Caf"
        Then Verifico que el elemento "ListaAutocomplete" exista

    Scenario: TC_SEARCH_009 Validar que se pueda seleccionar un artículo aleatorio del listado de búsquedas sugeridas
        When Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "Caf"
        Then Verifico que el elemento "TercerResultadoAutocomplete" este habilitado