Feature: SHOPPING CART

    Background: tiendaclic
        Given Abro la pagina "tiendaclic"
        And Leo los datos de "tiendaclic"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Clave" con "claveValida" yendo a buscar la config
        And Hago click en "Inicio sesion"

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

    #QUE EL NUMERO DEL CARRITO SE ACTUALICE
    Scenario: TC_SHOPPING_CART_022	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo aleatorio
    Scenario: TC_SHOPPING_CART_025	Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito
    Scenario: TC_SHOPPING_CART_029	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido en la página de carrito
    Scenario: TC_SHOPPING_CART_033	Validar que el ícono de carrito (núm) se actualice al eliminar 1ud. al artículo añadido en la página de carrito
    Scenario: TC_SHOPPING_CART_040	Validar que el ícono de carrito (núm) se actualice al sumar 1 ud. al artículo desde la ficha del producto
    Scenario: TC_SHOPPING_CART_050	Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito
    Scenario: TC_SHOPPING_CART_052	Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
    Scenario: TC_SHOPPING_CART_058	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor

    #CUENTAS
    @PRUEBA
    Scenario: TC_SHOPPING_CART_026	Validar que se actualice el importe subtotal al sumar (+) 1 ud. al artículo en la página de carrito
        * Navego al producto qa automation
        * Hago click en "Comprar"
        * Navego al carrito
        * Obtengo el texto del elemento "Precio total" y lo guardo en la variable "Monto"
        * Hago click en "Agregar unidad"
        * Verifico que el valor de "Monto" se haya multiplicado
    @PRUEBA
    Scenario: TC_SHOPPING_CART_028	Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito
        * Navego al producto qa automation
        * Hago click en "Comprar"
        * Navego al carrito
        * Obtengo el texto del elemento "Precio total" y lo guardo en la variable "Monto"
        * Hago click en "Agregar unidad"
        * Hago click en "Agregar unidad"
        * Verifico que el valor de "Monto" se haya triplicado

    @PRUEBA
    Scenario: TC_SHOPPING_CART_035	Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
        * Navego al producto qa automation
        * Lleno el campo "Agregar cantidad" con "2"
        * Hago click en "Comprar"
        * Navego al carrito
        * Obtengo el texto del elemento "Precio total" y lo guardo en la variable "Monto"
        * Hago click en "Restar unidad"
        Then Verifico que el valor de "Monto" se haya dividido

    #SUMAR PRODUCTOS AL CARRITO O ELIMINAR
    Scenario: TC_SHOPPING_CART_023	Validar propiedades de la página de carrito al añadir un artículo aleatorio (+Contiene sub casos)
    Scenario: TC_SHOPPING_CART_024	Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito
    Scenario: TC_SHOPPING_CART_032	Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito
    Scenario: TC_SHOPPING_CART_037	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la página de carrito
    Scenario: TC_SHOPPING_CART_036	Validar que se abra un modal de alerta al superar stock disponible del artículo añadido
    Scenario: TC_SHOPPING_CART_039	Validar que se pueda sumar (+) 1 ud. al artículo añadido al carrito desde la ficha del producto
    Scenario: TC_SHOPPING_CART_046	Validar que se abra un modal de alerta al superar stock disponible del artículo añadido desde la ficha de producto
    Scenario: TC_SHOPPING_CART_047	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la ficha del producto
    Scenario: TC_SHOPPING_CART_048	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
    Scenario: TC_SHOPPING_CART_051	Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito
    Scenario: TC_SHOPPING_CART_062	Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito

    #ABRIR Y CERRAR LA PAGINA
    Scenario: TC_SHOPPING_CART_038	Validar que se pueda seleccionar un artículo de la página e ingresar a la ficha del producto
    Scenario: TC_SHOPPING_CART_060	Validar propiedades de la página de carrito al añadir dos artículos del mismo proveedor (+Contiene sub casos)
    Scenario: TC_SHOPPING_CART_063	Validar que los artículos permanezcan en el carrito al cerrar el navegador y volver a abrir la tienda
    Scenario: TC_SHOPPING_CART_064	Validar que los artículos añadidos permanezcan en el carrito al abrir la tienda desde una ventana diferente
    Scenario: TC_SHOPPING_CART_065	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla