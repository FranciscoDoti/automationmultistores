Feature: Search invex


    Background: me logueo en invex
    #Given Abro la pagina "invex"
    #When Leo los datos de "invex"


    Scenario: TC_SEARCH_001	Validar una búsqueda exitosa
        When Lleno el campo "busqueda" con "notebook"
        And Presiona tecla ENTER en elemento "busqueda"
        Then Verifico que los elementos "resultado busqueda" contengan el texto "notebook"

    Scenario: TC_SEARCH_002	Validar propiedades del campo de búsquedas al ingresar caracteres especiales

    Scenario: TC_SEARCH_003	Validar propiedades del campo de búsquedas al dejar el campo vacío

    Scenario: TC_SEARCH_005	Validar que al presionar la tecla Enter se realice la búsqueda correspondiente

    Scenario: TC_SEARCH_006	Validar que las opciones de autocompletar coincidan con el texto ingresado en el campo de búsquedas

    Scenario: TC_SEARCH_012	Validar que la keyword buscada se visualiza en el resultado de búsqueda

    Scenario: TC_SEARCH_013	Validar caracteres minimos para desplegar el listado de búsquedas sugeridas

