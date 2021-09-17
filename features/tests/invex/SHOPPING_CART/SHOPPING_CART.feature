Feature: SHOPPING CART INVEX

    Background: Login invex
        Given Abro la pagina "invex"
        When Leo los datos de "invex"
        And Paso el mouse por encima de "IniciarSesion"
        * Hago click en "IniciarSesion"
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"

    ##DATOS DE LA PAGINA: https://invex-dev.aper.cloud/
    ##USER: apersqatesting@gmail.com    PASSWORD: Prueba01
    ##PRODUCTO AUTOMATION:

    Scenario: TC_SHOPPING_CART_010 Validar que se pueda agregar un artículo al carrito desde la página de inicio
        * Abro la pagina "invex"
        * Scrolleo hasta el elemento "Producto" y hago click
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "1"



    Scenario: TC_SHOPPING_CART_011	Validar que se pueda agregar un artículo al carrito desde una categoría aleatoria
        * Ingreso a la categoria de tecnologia de invex
        * Hago click en "producto busqueda"
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_015	Validar que se pueda agregar un artículo aleatorio al carrito
        * Lleno el campo "barra busqueda" con "licuadora"
        * Presiona tecla ENTER en elemento "barra busqueda"
        * Hago click en "producto busqueda"
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_016	Validar que el ícono de carrito (núm) se actualice al agregar un artículo aleatorio
        * Lleno el campo "barra busqueda" con "licuadora"
        * Presiona tecla ENTER en elemento "barra busqueda"
        * Hago click en "producto busqueda"
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "1"


    Scenario: TC_SHOPPING_CART_022	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo aleatorio
        * Lleno el campo "barra busqueda" con "licuadora"
        * Presiona tecla ENTER en elemento "barra busqueda"
        * Hago click en "producto busqueda"
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "1"
        * Hago click en "eliminar del carrito"
        * Refresco la pagina
        Then Verifico que el campo de carrito invex este vacio

    Scenario: TC_SHOPPING_CART_024	Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Clickeo en sumar cantidad
        * Refresco la pagina
        Then Verifico que el valor del campo "seleccionar cantidad" sea igual a "2"

    Scenario: TC_SHOPPING_CART_025	Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Clickeo en sumar cantidad
        * Refresco la pagina
        Then Verifico que el campo "carrito numero" contenga el texto "2"


    Scenario: TC_SHOPPING_CART_013	Validar que se pueda agregar un artículo al carrito desde una subsubcategoría aleatoria
        * Ingreso a la subcategoria de smartphones de invex
        * Hago click en "producto busqueda"
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "1"


    Scenario: TC_SHOPPING_CART_028	Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Clickeo en sumar cantidad
        * Clickeo en sumar cantidad
        Then Verifico que el valor del campo "seleccionar cantidad" sea igual a "3"

    Scenario: TC_SHOPPING_CART_029	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Clickeo en sumar cantidad
        * Clickeo en sumar cantidad
        * Refresco la pagina
        Then Verifico que el campo "carrito numero" contenga el texto "3"



    Scenario: TC_SHOPPING_CART_027	Validar que se actualice el importe total al sumar (+) 1 ud. al artículo en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Obtengo el texto del elemento "Total" y lo guardo en la variable "Monto"
        * Clickeo en sumar cantidad
        * Verifico que el total del precio de "Monto" invex se haya multiplicado por 2


    Scenario: TC_SHOPPING_CART_031	Validar que se actualice el importe total al sumar (+) 2 uds. al artículo en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Obtengo el texto del elemento "Total" y lo guardo en la variable "Monto"
        * Clickeo en sumar cantidad
        * Clickeo en sumar cantidad
        * Verifico que el total del precio de "Monto" invex se haya multiplicado por 3


    Scenario: TC_SHOPPING_CART_035	Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Obtengo el texto del elemento "Total" y lo guardo en la variable "Monto"
        * Clickeo en sumar cantidad
        * Clickeo en sumar cantidad
        * Clickeo en restar cantidad
        * Verifico que el total del precio de "Monto" invex se haya multiplicado por 2

    Scenario: TC_SHOPPING_CART_032	Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Clickeo en sumar cantidad
        * Refresco la pagina
        Then Verifico que el valor del campo "seleccionar cantidad" sea igual a "2"
        And Clickeo en restar cantidad
        * Refresco la pagina
        Then Verifico que el valor del campo "seleccionar cantidad" sea igual a "1"


    Scenario: TC_SHOPPING_CART_037	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Clickeo en restar cantidad
        Then Verifico que el campo "verificacion compra minima" contenga el texto "La cantidad mínima en el pedido de compra para el producto"


    Scenario: TC_SHOPPING_CART_041	Validar que se puedan sumar (+) 2 uds. al artículo añadido al carrito desde la ficha del producto
        * Navego al producto de automation invex
        * Clickeo en sumar cantidad
        * Clickeo en sumar cantidad
        Then Verifico que el valor del campo "seleccionar cantidad ficha producto" sea igual a "3"

    Scenario: TC_SHOPPING_CART_042	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido desde la ficha del producto
        * Navego al producto de automation invex
        * Hago click en "sumar unidad"
        * Hago click en "sumar unidad"
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "carrito numero" contenga el texto "3"



    Scenario: TC_SHOPPING_CART_043	Validar que se pueda restar (-) 1 ud. al artículo añadido al carrito desde la ficha del producto
        * Navego al producto de automation invex
        * Hago click en "sumar unidad"
        Then Verifico que el valor del campo "seleccionar cantidad ficha producto" sea igual a "2"
        * Hago click en "restar unidad"
        Then Verifico que el valor del campo "seleccionar cantidad ficha producto" sea igual a "1"

    #    @PRUEBA
    #    Scenario: TC_SHOPPING_CART_044	Validar que el ícono de carrito (núm) se actualice al restar 1ud. al artículo añadido desde la ficha del producto
    #        * Navego al producto de automation invex
    #        * Hago click en "sumar unidad"
    #        * Clickeo en restar cantidad
    #        * Refresco la pagina
    #        Then Verifico que el campo "carrito numero" contenga el texto "3"


    Scenario: TC_SHOPPING_CART_047	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la ficha del producto
        * Navego al producto de automation invex
        * Hago click en "restar unidad"
        Then Verifico que el valor del campo "seleccionar cantidad ficha producto" sea igual a "1"


    Scenario: TC_SHOPPING_CART_048	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Hago click en "eliminar del carrito"
        Then Verifico que el campo "carrito vacio" contenga el texto "No hay más artículos"


    Scenario: TC_SHOPPING_CART_050	Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Hago click en "eliminar del carrito"
        * Refresco la pagina
        Then Verifico que el campo de carrito invex este vacio

    #    Scenario: TC_SHOPPING_CART_051	Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito


    #   Scenario: TC_SHOPPING_CART_052	Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
    #    Scenario: TC_SHOPPING_CART_058	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor

    @PRUEBA
    Scenario: TC_SHOPPING_CART_062	Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Navego al producto de automation invex proveedor dos
        * Hago click en "agregar al carrito"
        Then Verifico que el campo "Solo productos de un proveedor" contenga el texto "vendedores diferentes no está disponible"


#TC_SHOPPING_CART_063	Validar que los artículos permanezcan en el carrito al cerrar el navegador y volver a abrir la tienda
#TC_SHOPPING_CART_064	Validar que los artículos añadidos permanezcan en el carrito al abrir la tienda desde una ventana diferente
#TC_SHOPPING_CART_065	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
#TC_SHOPPING_CART_066	Intentar agregar artículos al carrito, cerrar sesión, agregar artículos como usuario invitado, e iniciar sesión nuevamente