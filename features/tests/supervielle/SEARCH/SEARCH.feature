@supervielle
@SEARCH

Feature: SEARCH

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"

    
    Scenario: TC_SEARCH_001 Validar una búsqueda exitosa
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        And Hago click en "Buscar"
        Then Verifico que exista el elemento "H1Busqueda"

    
    Scenario: TC_SEARCH_004 Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        And Hago click en "Buscar"
        And Verifico que exista el elemento "H1Busqueda"
        And Verifico que la cantidad de "ProductosTotalesBusqueda" sea igual a la cantidad de "ProductosQueContienenParlante"

    
    Scenario: TC_SEARCH_005 Validar que al presionar la tecla Enter se realice la búsqueda correspondiente
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        And Se envia tecla "ENTER" al input "InputBusqueda"
        And Verifico que exista el elemento "H1Busqueda"
        And Verifico que la cantidad de "ProductosTotalesBusqueda" sea igual a la cantidad de "ProductosQueContienenParlante"

    
    Scenario: TC_SEARCH_006 Validar que las opciones de autocompletar coincidan con el texto ingresado en el campo de búsquedas
        When Lleno el campo "InputBusqueda" con "stringCortaABuscar" yendo a buscar la config
        Then Verifico que la cantidad de "CantidadBusquedasSugeridas" sea igual a la cantidad de "CantidadBusquedasSugeridasQueContienenPar"

    
    Scenario: TC_SEARCH_007 Validar que se despliegue el listado de búsquedas sugeridas al escribir en el campo de búsquedas
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        Then Verifico que exista el elemento "ListaBusquedasSugeridasDisplay"

    
    Scenario: TC_SEARCH_009 Validar que se pueda seleccionar un artículo aleatorio del listado de búsquedas sugeridas
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        And Hago click en "BusquedaSugerida1"
        Then Verifico que exista el elemento "AgregarAlCarrito"

    #REVISAR
    Scenario: TC_SEARCH_010 Validar que se pueda navegar con el teclado por el listado de búsquedas sugeridas
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        And Se envia tecla "ARROW_DOWN" al input "InputBusqueda"
        And Se envia tecla "ARROW_DOWN" al input "InputBusqueda"
        And Verifico que exista el elemento "BusquedaSugerida1Display"
        And Se envia tecla "ARROW_DOWN" al input "InputBusqueda"
        And Se envia tecla "ARROW_UP" al input "InputBusqueda"
        Then Verifico que exista el elemento "BusquedaSugerida1Display"

    #REVISAR
    Scenario: TC_SEARCH_011 Validar que se pueda seleccionar con el teclado un artículo aleatorio del listado de búsquedas sugeridas
        When Lleno el campo "InputBusqueda" con "stringABuscar" yendo a buscar la config
        And Se envia tecla "ARROW_DOWN" al input "InputBusqueda"
        And Se envia tecla "ARROW_DOWN" al input "InputBusqueda"
        And Se envia tecla "ENTER" al input "BusquedaSugerida1Display"
        Then Verifico que exista el elemento "AgregarAlCarrito"
