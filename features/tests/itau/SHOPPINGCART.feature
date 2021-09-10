@itau
Feature: itauCarrito

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"


    Scenario: Validar que al seleccionar un producto se agregue al carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_011	Validar que se pueda agregar un artículo al carrito desde una categoría aleatoria
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_012	Validar que se pueda agregar un artículo al carrito desde una subcategoría aleatoria
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "Subcategoria"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_013 Validar que se pueda agregar un artículo al carrito desde una subsubcategoría aleatoria
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "Subcategoria"
        And Hago click en "SubSubCategoria"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"


    Scenario:TC_SHOPPING_CART_014	Validar que se pueda agregar un artículo al carrito desde la ficha de un artículo aleatorio
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"


    Scenario:TC_SHOPPING_CART_015	Validar que se pueda agregar un artículo aleatorio al carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Electrodomesticos"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"



    Scenario:TC_SHOPPING_CART_016	Validar que el ícono de carrito (núm) se actualice al agregar un artículo aleatorio
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Hogar"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_022	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo aleatorio
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el campo "CarritoVacio" contenga el texto "No hay más artículos en tu carrito"

    #Scenario:TC_SHOPPING_CART_023 Validar propiedades de la página de carrito al añadir un artículo aleatorio (+Contiene sub casos)


    Scenario:TC_SHOPPING_CART_024	Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        Then Verifico que el campo "VerificaciónDosProductosEnCarrito" contenga el texto "2 artículos"

    Scenario:TC_SHOPPING_CART_025 Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    Scenario:TC_SHOPPING_CART_026	Validar que se actualice el importe subtotal al sumar (+) 1 ud. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Obtengo el texto del elemento "subtotal" y lo guardo en la variable "Submonto"
        And Hago click en "SumarUnArticulo"
        Then Verifico que el valor de "Submonto" sea el doble

    Scenario:TC_SHOPPING_CART_027	Validar que se actualice el importe total al sumar (+) 1 ud. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Obtengo el texto del elemento "total" y lo guardo en la variable "Monto"
        And Hago click en "SumarUnArticulo"
        Then Verifico que el valor de "Monto" sea el doble

    Scenario:TC_SHOPPING_CART_028	Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Hago click en "SumarUnArticulo"
        Then Verifico que el campo "VerificaciónTresProductosEnCarrito" contenga el texto "3 artículos"

    Scenario:TC_SHOPPING_CART_029	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Hago click en "SumarUnArticulo"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"

    Scenario:TC_SHOPPING_CART_030	Validar que se actualice el importe subtotal al sumar (+) 2 uds. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Obtengo el texto del elemento "subtotal" y lo guardo en la variable "Submonto"
        And Hago doble click en "SumarUnArticulo"
        Then Verifico que el valor de "Submonto" sea el triple

    Scenario:TC_SHOPPING_CART_031	Validar que se actualice el importe total al sumar (+) 2 uds. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Obtengo el texto del elemento "total" y lo guardo en la variable "Monto"
        And Hago doble click en "SumarUnArticulo"
        Then Verifico que el valor de "Monto" sea el triple

    Scenario:TC_SHOPPING_CART_032	Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Hago click en "RestarUnArticulo"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_033	Validar que el ícono de carrito (núm) se actualice al eliminar 1ud. al artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el el elemento "CantidadProductosEnCarrito" no exista


    Scenario:TC_SHOPPING_CART_034	Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Obtengo el texto del elemento "subtotal" y lo guardo en la variable "Submonto"
        And Hago click en "RestarUnArticulo"
        Then Verifico que el valor de "Submonto" sea la mitad


    Scenario:TC_SHOPPING_CART_035	Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Obtengo el texto del elemento "total" y lo guardo en la variable "Total"
        And Hago click en "RestarUnArticulo"
        Then Verifico que el valor de "Total" sea la mitad

    Scenario:TC_SHOPPING_CART_037	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "RestarUnArticulo"
        And Hago click en "RestarUnArticulo"
        And Hago click en "RestarUnArticulo"
        Then Verifico que el campo "CartelCantidadMinima" contenga el texto "La cantidad mínima en el pedido de compra para el producto"

    Scenario:TC_SHOPPING_CART_039	Validar que se pueda sumar (+) 1 ud. al artículo añadido al carrito desde la ficha del producto
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "AñadirDesdeFicha"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    Scenario:TC_SHOPPING_CART_040	Validar que el ícono de carrito (núm) se actualice al sumar 1 ud. al artículo desde la ficha del producto
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "AñadirDesdeFicha"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    Scenario:TC_SHOPPING_CART_041	Validar que se puedan sumar (+) 2 uds. al artículo añadido al carrito desde la ficha del producto
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "AñadirDesdeFicha"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"

    Scenario:TC_SHOPPING_CART_042	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido desde la ficha del producto
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "AñadirDesdeFicha"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"

    Scenario:TC_SHOPPING_CART_043 Validar que se pueda restar (-) 1 ud. al artículo añadido al carrito desde la ficha del producto
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "RestarUnArticuloDesdeFicha"
        And Hago click en "AñadirDesdeFicha"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:TC_SHOPPING_CART_044 Validar que el ícono de carrito (núm) se actualice al restar 1ud. al artículo añadido desde la ficha del producto
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AgregarUnArticuloDesdeFicha"
        And Hago click en "RestarUnArticuloDesdeFicha"
        And Hago click en "AñadirDesdeFicha"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"


    Scenario:TC_SHOPPING_CART_048	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "No hay más artículos en tu carrito"

    Scenario:TC_SHOPPING_CART_050 Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "FichaProducto"
        And Hago click en "AñadirDesdeFicha"
        And Hago click en "Carrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el elemento "CantidadProductosEnCarrito" no exista

    Scenario:TC_SHOPPING_CART_051	Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito
        When Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoUnoMismoProvedor"
        And Hago click en "BarraBuscadora"
        And Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoDosMismoProvedor"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    Scenario:TC_SHOPPING_CART_052	Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
        When Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoUnoMismoProvedor"
        And Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoDosMismoProvedor"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    Scenario:TC_SHOPPING_CART_062	Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito
        When Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoUnoMismoProvedor"
        And Hago click en "BarraBuscadora"
        And Hago click en "BarraBuscadora"
        When Lleno el campo "BarraBuscadora" con "Tienda Movil"
        And Hago click en "Buscar"
        And Hago click en "ProductoUnoMismoProvedor"
        Then Verifico que el campo "CartelProvedoresDiferentes" contenga el texto "Ups! Lo sentimos"

    Scenario:TC_SHOPPING_CART_065	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
        When Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoUnoMismoProvedor"
        When Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoDosMismoProvedor"
        And Hago click en "MiCuenta"
        And Hago click en "Salir"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
