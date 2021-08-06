Feature: search

    Background: Search
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"

Scenario: TC_SEARCH_001	Validar una búsqueda exitosa
    When Lleno el campo "busqueda" con "notebook"
    * Hago click en "lupa"
    Then Verifico que los elementos "busqueda exitosa" contengan el texto "notebook"

Scenario: TC_SEARCH_002 Validar propiedades del campo de búsquedas al ingresar caracteres especiales
    When Lleno el campo "busqueda" con ".,/*??"
    * Presiona tecla ENTER en elemento "busqueda"
    Then Verifico que el campo "error busqueda" contenga el texto "No se han encontrado resultados"

Scenario: TC_SEARCH_002	Validar propiedades del campo de búsquedas al ingresar caracteres especiales
    When Valido que el campo "busqueda" sea de propiedad "texto"

Scenario: TC_SEARCH_004	Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente
    When Lleno el campo "busqueda" con "notebook"
    * Hago click en "lupa"
    Then Verifico que se haya redirigido a la pagina que contenga "/buscar?submit_search"

Scenario: TC_SEARCH_005	Validar que al presionar la tecla Enter se realice la búsqueda correspondiente
    When Lleno el campo "busqueda" con "notebook"
    * Presiona tecla ENTER en elemento "busqueda"
    Then Verifico que se haya redirigido a la pagina que contenga "/buscar?submit_search"

Scenario: TC_SEARCH_012 Validar que la keyword buscada se visualiza en el resultado de búsqueda
    When Lleno el campo "busqueda" con "tostadora"
    * Presiona tecla ENTER en elemento "busqueda"
    Then Verifico que los elementos "busqueda exitosa" contengan el texto "tostadora"
