Feature: search

    Background: Search
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
@PRUEBA
Scenario: TC_SEARCH_001	Validar una búsqueda exitosa

Scenario: TC_SEARCH_002	Validar propiedades del campo de búsquedas al ingresar caracteres especiales
    When Valido que el campo "busqueda" sea de propiedad "texto"

Scenario: TC_SEARCH_003	Validar propiedades del campo de búsquedas al dejar el campo vacío

Scenario: TC_SEARCH_004	Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente

Scenario: TC_SEARCH_005	Validar que al presionar la tecla Enter se realice la búsqueda correspondiente

Scenario: TC_SEARCH_006	Validar que las opciones de autocompletar coincidan con el texto ingresado en el campo de búsquedas

Scenario: TC_SEARCH_007	Validar que se despliegue el listado de búsquedas sugeridas al escribir en el campo de búsquedas

Scenario: TC_SEARCH_008	Validar que se pueda navegar (scroll) por el listado de búsquedas sugeridas

Scenario: TC_SEARCH_009	Validar que se pueda seleccionar un artículo aleatorio del listado de búsquedas sugeridas

Scenario: TC_SEARCH_010	Validar que se pueda navegar con el teclado por el listado de búsquedas sugeridas

Scenario: TC_SEARCH_011	Validar que se pueda seleccionar con el teclado un artículo aleatorio del listado de búsquedas sugeridas