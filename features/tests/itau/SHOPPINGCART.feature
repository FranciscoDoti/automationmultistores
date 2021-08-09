@itau
Feature: itauCarrito

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"

    Scenario: Validar que al seleccionar un producto se agregue al carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"



    Scenario: Validar que se pueda eliminar un producto del carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "No hay más artículos en tu carrito"




    Scenario: TC_SHOPPING_CART_013	Validar que se pueda agregar un artículo al carrito desde una categoría aleatoria
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_014	Validar que se pueda agregar un artículo al carrito desde una subcategoría aleatoria
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "Subcategoria"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"



    Scenario:TC_SHOPPING_CART_016	Validar que se pueda agregar un artículo al carrito desde la ficha de un artículo aleatorio
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_017	Validar que se pueda agregar un artículo aleatorio al carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_018	Validar que el ícono de carrito (núm) se actualice al agregar un artículo aleatorio
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_019	Validar que al pasar el puntero por el botón de carrito se despliegue una lista con el artículo añadido


    Scenario:TC_SHOPPING_CART_020	Validar que al presionar el botón de carrito se despliegue una lista con el artículo añadido

    Scenario:TC_SHOPPING_CART_021	Validar propiedades de lista desplegable al añadir un artículo aleatorio al carrito (+Contiene sub casos)


    Scenario:TC_SHOPPING_CART_022	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde lista desplegable
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "No hay más artículos en tu carrito"

    Scenario:TC_SHOPPING_CART_023	Validar que se abra un modal de alerta al intentar eliminar un artículo del carrito desde la lista desplegable


    Scenario:TC_SHOPPING_CART_024	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo aleatorio
 When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el el elemento "CantidadProductosEnCarrito" no exista

    Scenario:TC_SHOPPING_CART_025	Validar propiedades de la página de carrito al añadir un artículo aleatorio (+Contiene sub casos)


    Scenario:TC_SHOPPING_CART_026	Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito


    Scenario:TC_SHOPPING_CART_027	Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito


    Scenario:TC_SHOPPING_CART_028	Validar que se actualice el importe subtotal al sumar (+) 1 ud. al artículo en la página de carrito


    Scenario:TC_SHOPPING_CART_029	Validar que se actualice el importe total al sumar (+) 1 ud. al artículo en la página de carrito


    Scenario:TC_SHOPPING_CART_030	Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito


    Scenario:TC_SHOPPING_CART_031	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido en la página de carrito


    Scenario:TC_SHOPPING_CART_032	Validar que se actualice el importe subtotal al sumar (+) 2 uds. al artículo en la página de carrito


    Scenario:TC_SHOPPING_CART_033	Validar que se actualice el importe total al sumar (+) 2 uds. al artículo en la página de carrito
    Scenario:TC_SHOPPING_CART_034	Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito
    Scenario:TC_SHOPPING_CART_035	Validar que el ícono de carrito (núm) se actualice al eliminar 1ud. al artículo añadido en la página de carrito
    Scenario:TC_SHOPPING_CART_036	Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito
    Scenario:TC_SHOPPING_CART_037	Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
    Scenario:TC_SHOPPING_CART_038	Intentar sumar (+) más unidades de las que tiene disponible en stock el artículo añadido
    Scenario:TC_SHOPPING_CART_039	Validar que se abra un modal de alerta al superar stock disponible del artículo añadido
    Scenario:TC_SHOPPING_CART_040	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la página de carrito
    Scenario:TC_SHOPPING_CART_041	Validar que se pueda seleccionar un artículo de la página e ingresar a la ficha del producto
    Scenario:TC_SHOPPING_CART_042	Validar que se pueda sumar (+) 1 ud. al artículo añadido al carrito desde la ficha del producto
    Scenario:TC_SHOPPING_CART_043	Validar que el ícono de carrito (núm) se actualice al sumar 1 ud. al artículo desde la ficha del producto
    Scenario:TC_SHOPPING_CART_044	Validar que se puedan sumar (+) 2 uds. al artículo añadido al carrito desde la ficha del producto
    Scenario:TC_SHOPPING_CART_045	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido desde la ficha del producto
    Scenario:TC_SHOPPING_CART_046	Validar que se pueda restar (-) 1 ud. al artículo añadido al carrito desde la ficha del producto
    Scenario:TC_SHOPPING_CART_047	Validar que el ícono de carrito (núm) se actualice al restar 1ud. al artículo añadido desde la ficha del producto
    Scenario:TC_SHOPPING_CART_048	Intentar sumar (+) más unidades de las que tiene disponible en stock el artículo añadido desde la ficha de producto
    Scenario:TC_SHOPPING_CART_049	Validar que se abra un modal de alerta al superar stock disponible del artículo añadido desde la ficha de producto
    Scenario:TC_SHOPPING_CART_050	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la ficha del producto
    Scenario:TC_SHOPPING_CART_051	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
    Scenario:TC_SHOPPING_CART_052	Validar que se abra un modal de alerta al intentar eliminar un artículo desde la página de carrito
    Scenario:TC_SHOPPING_CART_053	Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito
    Scenario:TC_SHOPPING_CART_054	Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito
    Scenario:TC_SHOPPING_CART_055	Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
    Scenario:TC_SHOPPING_CART_056	Validar que al pasar el puntero por el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
    Scenario:TC_SHOPPING_CART_057	Validar que al presionar el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
    Scenario:TC_SHOPPING_CART_058	Validar propiedades de lista desplegable al añadir dos artículos aleatorios al carrito (+Contiene sub casos)
    Scenario:TC_SHOPPING_CART_059	Validar que se pueda eliminar un artículo desde la lista desplegable
    Scenario:TC_SHOPPING_CART_060	Validar que se abra un modal de alerta al intentar eliminar el artículo desde la lista desplegable
    Scenario:TC_SHOPPING_CART_061	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor
    Scenario:TC_SHOPPING_CART_062	Validar que se actualice la lista desplegable al eliminar un artículo
    Scenario:TC_SHOPPING_CART_063	Validar propiedades de la página de carrito al añadir dos artículos del mismo proveedor (+Contiene sub casos)
    Scenario:TC_SHOPPING_CART_064	Validar que se pueda hacer scroll sobre la lista desplegada con cinco o más artículos añadidos al carrito
    Scenario:TC_SHOPPING_CART_065	Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito
    Scenario:TC_SHOPPING_CART_066	Validar que los artículos permanezcan en el carrito al cerrar el navegador y volver a abrir la tienda
    Scenario:TC_SHOPPING_CART_067	Validar que los artículos añadidos permanezcan en el carrito al abrir la tienda desde una ventana diferente
    Scenario:TC_SHOPPING_CART_068	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
    Scenario:TC_SHOPPING_CART_069	Intentar agregar artículos al carrito, cerrar sesión, agregar artículos como usuario invitado, e iniciar sesión nuevamente