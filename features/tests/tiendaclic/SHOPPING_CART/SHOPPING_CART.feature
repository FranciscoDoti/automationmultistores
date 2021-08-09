Feature: SHOPPING CART

    Background: tiendaclic
        Given Abro la pagina "tiendaclic"
        And Leo los datos de "tiendaclic"
@PRUEBA
Scenario: TC_SHOPPING_CART_015	Validar que se pueda agregar un artículo aleatorio al carrito
    * Lleno el campo "busqueda" con "notebook"
    * Hago click en "lupa"
    * Hago click en "carritoCompra"
    * Hago click en "Comprar"
    Then Verifico que el campo "cantidadCarrito" contenga el texto "1"

Scenario: TC_SHOPPING_CART_016	Validar que el ícono de carrito (núm) se actualice al agregar un artículo aleatorio
    * Lleno el campo "busqueda" con "notebook"
    * Hago click en "lupa"
    * Hago click en "carritoCompra"
    * Hago click en "Comprar"
    Then Verifico que el campo "cantidadCarrito" contenga el texto "1"
    * Lleno el campo "busqueda" con "afeitadora"
    * Hago click en "lupa"
    * Hago click en "carritoCompra"
    * Hago click en "Comprar"
    Then Verifico que el campo "cantidadCarrito" contenga el texto "2" 
    #####VALIDAR QUE SE PUEDA HACER

Scenario: TC_SHOPPING_CART_017	Validar que al pasar el puntero por el botón de carrito se despliegue una lista con el artículo añadido
    * Lleno el campo "busqueda" con "notebook"
    * Hago click en "lupa"
    * Hago click en "carritoCompra"
    * Hago click en "Comprar"
    * Paso el mouse por encima de "cantidadCarrito"
    Then 

Scenario: TC_SHOPPING_CART_019	Validar propiedades de lista desplegable al añadir un artículo aleatorio al carrito (+Contiene sub casos)
Scenario: TC_SHOPPING_CART_020	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde lista desplegable
Scenario: TC_SHOPPING_CART_022	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo aleatorio
Scenario: TC_SHOPPING_CART_023	Validar propiedades de la página de carrito al añadir un artículo aleatorio (+Contiene sub casos)
Scenario: TC_SHOPPING_CART_024	Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_025	Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_026	Validar que se actualice el importe subtotal al sumar (+) 1 ud. al artículo en la página de carrito
Scenario: TC_SHOPPING_CART_027	Validar que se actualice el importe total al sumar (+) 1 ud. al artículo en la página de carrito
Scenario: TC_SHOPPING_CART_028	Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_029	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_030	Validar que se actualice el importe subtotal al sumar (+) 2 uds. al artículo en la página de carrito
Scenario: TC_SHOPPING_CART_031	Validar que se actualice el importe total al sumar (+) 2 uds. al artículo en la página de carrito
Scenario: TC_SHOPPING_CART_032	Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_033	Validar que el ícono de carrito (núm) se actualice al eliminar 1ud. al artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_034	Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito
Scenario: TC_SHOPPING_CART_035	Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
Scenario: TC_SHOPPING_CART_036	Validar que se abra un modal de alerta al superar stock disponible del artículo añadido
Scenario: TC_SHOPPING_CART_037	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la página de carrito
Scenario: TC_SHOPPING_CART_038	Validar que se pueda seleccionar un artículo de la página e ingresar a la ficha del producto
Scenario: TC_SHOPPING_CART_039	Validar que se pueda sumar (+) 1 ud. al artículo añadido al carrito desde la ficha del producto
Scenario: TC_SHOPPING_CART_040	Validar que el ícono de carrito (núm) se actualice al sumar 1 ud. al artículo desde la ficha del producto
Scenario: TC_SHOPPING_CART_046	Validar que se abra un modal de alerta al superar stock disponible del artículo añadido desde la ficha de producto
Scenario: TC_SHOPPING_CART_047	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la ficha del producto
Scenario: TC_SHOPPING_CART_048	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
Scenario: TC_SHOPPING_CART_050	Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito
Scenario: TC_SHOPPING_CART_051	Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito
Scenario: TC_SHOPPING_CART_052	Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
Scenario: TC_SHOPPING_CART_053	Validar que al pasar el puntero por el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
Scenario: TC_SHOPPING_CART_054	Validar que al presionar el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
Scenario: TC_SHOPPING_CART_055	Validar propiedades de lista desplegable al añadir dos artículos aleatorios al carrito (+Contiene sub casos)
Scenario: TC_SHOPPING_CART_056	Validar que se pueda eliminar un artículo desde la lista desplegable
Scenario: TC_SHOPPING_CART_058	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor
Scenario: TC_SHOPPING_CART_059	Validar que se actualice la lista desplegable al eliminar un artículo
Scenario: TC_SHOPPING_CART_060	Validar propiedades de la página de carrito al añadir dos artículos del mismo proveedor (+Contiene sub casos)
Scenario: TC_SHOPPING_CART_061	Validar que se pueda hacer scroll sobre la lista desplegada con cinco o más artículos añadidos al carrito
Scenario: TC_SHOPPING_CART_062	Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito
Scenario: TC_SHOPPING_CART_063	Validar que los artículos permanezcan en el carrito al cerrar el navegador y volver a abrir la tienda
Scenario: TC_SHOPPING_CART_064	Validar que los artículos añadidos permanezcan en el carrito al abrir la tienda desde una ventana diferente
Scenario: TC_SHOPPING_CART_065	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
Scenario: TC_SHOPPING_CART_066	Intentar agregar artículos al carrito, cerrar sesión, agregar artículos como usuario invitado, e iniciar sesión nuevamente



Scenario: TC_SHOPPING_CART_002	Validar que no se pueda ingresar al carrito sin artículos añadidos como usuario invitado
Scenario: TC_SHOPPING_CART_003	Validar que se pueda agregar un artículo al carrito como usuario invitado
Scenario: TC_SHOPPING_CART_004	Validar que se pueda eliminar un artículo del carrito como usuario invitado
Scenario: TC_SHOPPING_CART_005	Validar que se puedan agregar dos unidades del mismo artículo al carrito como usuario invitado
Scenario: TC_SHOPPING_CART_006	Validar que se puedan eliminar todos los artículos del carrito como usuario invitado
Scenario: TC_SHOPPING_CART_007	Validar que se abra un modal de alerta al intentar agregar artículos de diferentes proveedores al carrito como invitado
Scenario: TC_SHOPPING_CART_008	Validar que el usuario invitado al loguearse mantenga los artículos en el carrito
Scenario: TC_SHOPPING_CART_010	Validar que se pueda agregar un artículo al carrito desde la página de inicio
Scenario: TC_SHOPPING_CART_011	Validar que se pueda agregar un artículo al carrito desde una categoría aleatoria
Scenario: TC_SHOPPING_CART_012	Validar que se pueda agregar un artículo al carrito desde una subcategoría aleatoria
Scenario: TC_SHOPPING_CART_013	Validar que se pueda agregar un artículo al carrito desde una subsubcategoría aleatoria
Scenario: TC_SHOPPING_CART_014	Validar que se pueda agregar un artículo al carrito desde la ficha de un artículo aleatorio