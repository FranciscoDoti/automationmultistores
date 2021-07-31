@BUSQUEDA
Feature: BUSQUEDA

        Background: Pasos comunes
                Given Abro la pagina "icbc"
                And Leo los datos de "icbc"

        Scenario: TC_SEARCH_002_Validar propiedades del campo de búsquedas al ingresar caracteres especiales.
                When Lleno el campo "BarraBusqueda" con "CaracteresEspeciales" yendo a buscar la config
                And Hago click en "LupaBusqueda"
                Then Verifico que el elemento "EncabezadoBusqueda" este habilitado
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "No se han encontrado resultados para su búsqueda"

        Scenario: TC_SEARCH_003_Validar propiedades del campo de búsquedas al dejar el campo vacío.
                And Hago click en "LupaBusqueda"
                Then Verifico que el elemento "EncabezadoBusqueda" este habilitado
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "Por favor escriba una palabra contraseña para la búsqueda"

        Scenario: TC_SEARCH_004_Validar que al presionar el botón Buscar (ícono lupa) se realice la búsqueda correspondiente.
                When Lleno el campo "BarraBusqueda" con "ProductoBusqueda" yendo a buscar la config
                And Hago click en "LupaBusqueda"
                Then Verifico que el campo "EncabezadoBusqueda" contenga el texto "ProductoBusqueda" yendo a buscar la config
                When Hago click que contenga "ItemBuscado" "ProductoBusqueda" yendo a buscar la config
                Then Verifico que el campo "Breadcumb" contenga el texto "ProductoBusqueda" yendo a buscar la config

        Scenario: TC_SEARCH_005_Validar que al presionar la tecla Enter se realice la búsqueda correspondiente.
                When Lleno el campo "BarraBusqueda" con "ProductoBusqueda" yendo a buscar la config
                When Presiona tecla ENTER en elemento "BarraBusqueda"
                Then Verifico que el campo "EncabezadoBusqueda" contenga el texto "ProductoBusqueda" yendo a buscar la config
                When Hago click que contenga "ItemBuscado" "ProductoBusqueda" yendo a buscar la config
                Then Verifico que el campo "Breadcumb" contenga el texto "ProductoBusqueda" yendo a buscar la config

        Scenario: TC_SEARCH_007_Validar que se despliegue el listado de búsquedas sugeridas al escribir en el campo de búsquedas.
                When Lleno el campo "BarraBusqueda" con "ProductoAleatorio" yendo a buscar la config
                Then Verificar y obtener elementos de lista "ListaBusquedaSugerida"

        Scenario: TC_SEARCH_009_Validar que se pueda seleccionar un artículo aleatorio del listado de búsquedas sugeridas.
                When Lleno el campo "BarraBusqueda" con "ProductoAleatorio" yendo a buscar la config
                When Hago click que contenga "ListaBusquedaSugerida" "ProductoAleatorio"
                Then Verifico que el campo "Breadcumb" contenga el texto "ProductoAleatorio" yendo a buscar la config

        Scenario: TC_SEARCH_012_Validar que la keyword buscada se visualiza en el resultado de búsqueda.
                When Lleno el campo "BarraBusqueda" con "ProductoBusqueda" yendo a buscar la config
                And Hago click en "LupaBusqueda"
                Then Verifico que el campo "EncabezadoBusqueda" contenga el texto "ProductoBusqueda" yendo a buscar la config

        Scenario: TC_SEARCH_013_Validar caracteres minimos para desplegar el listado de búsquedas sugeridas.
                When Lleno el campo "BarraBusqueda" con "KeywordInvalida" yendo a buscar la config
                Then Verifico que el elemento "ListaBusquedaSugerida" no esté presente