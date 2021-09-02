Feature: SHOPPING CART INVEX

    Background: Login invex
        Given Abro la pagina "invex"
        When Leo los datos de "invex"
        And Paso el mouse por encima de "IniciarSesion"
        * Hago click en "IniciarSesion"
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
    #TAREA 1: AGREGAR A TODOS LOS CASOS LA PALABRA SCENARIO ANTES, LOS QUE TIENEN EL # ESTAN COMENDADOS, AGREGASELO IGUAL PERO DESPUES
    #DEL #

    #TAREA 2: EJECUTAR TODOS LOS CASOS DE MANERA MANUAL PARA VER EL PASO A PASO, ANOTARLO Y LUEGO EJECUTARLO, SI SE DETECTA UN BUG
    #HACER EL REPORTE: TITULO DEL BUG, DESCRIPCION, RESULTADO ESPERADO, RESULTADO OBTENIDO, PASOS PARA RECREARLO, CAPTURA PANTALLA O
    #VIDEO

    #TAREA 3: EMPEZAR CON LOS SCENARIOS, ARMAR PASO POR PASO Y EJECUTARLO PARA VALIDAR QUE NO HAYA ERRORES, TENER EN CUENTA
    #QUE SI HAY PALABRAS COMO SCENARIO VACIAS Y DEMAS, NO SE VA A PODER EJECUTAR. VER QUE EL XPATH ESTA AGREGADO EN LA INVEX.JSON
    #DENTRO DE LA CARPETA PAGES.

    ##DATOS DE LA PAGINA: https://invex-dev.aper.cloud/
    ##USER: apersqatesting@gmail.com    PASSWORD: Prueba01
    ##PRODUCTO AUTOMATION:

    #EJEMPLO:
    #sin iniciar sesion
    Scenario: TC_SHOPPING_CART_010 Validar que se pueda agregar un artículo al carrito desde la página de inicio
        * Hago click en "Producto"
        * Hago click en "agregar al carrito"
        Then Verifico que el texto del elemento "carrito numero" sea igual a "1"


    Scenario: TC_SHOPPING_CART_011	Validar que se pueda agregar un artículo al carrito desde una categoría aleatoria
        * Paso el mouse por encima de "Categorias"
        * Hago click en "Categorias tecnologia"
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
        Then Verifico que el elemento "carrito numero" no exista

    ## ELEMENTS NAMES: seleccionar cantidad, eliminar del carrito,boton numero carrito, carrito numero, agregar al carrito, producto busqueda, barra busqueda
    # Producto deporte, Categorias tecnologia, Categorias, Producto
    @PRUEBA
    Scenario: TC_SHOPPING_CART_024	Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito
        * Navego al producto de automation invex
        * Hago click en "agregar al carrito"
        * Lleno el campo "seleccionar cantidad" con "2"
        * Presiona tecla ENTER en elemento "seleccionar cantidad"
        Then Verifico que el valor del campo "seleccionar cantidad" sea igual a "2"

    Scenario: TC_SHOPPING_CART_025	Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito

    Scenario: TC_SHOPPING_CART_013	Validar que se pueda agregar un artículo al carrito desde una subsubcategoría aleatoria
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

    Scenario: TC_SHOPPING_CART_037	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la página de carrito
    Scenario: TC_SHOPPING_CART_041	Validar que se puedan sumar (+) 2 uds. al artículo añadido al carrito desde la ficha del producto
    Scenario: TC_SHOPPING_CART_042	Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido desde la ficha del producto
    Scenario: TC_SHOPPING_CART_043	Validar que se pueda restar (-) 1 ud. al artículo añadido al carrito desde la ficha del producto
    Scenario: TC_SHOPPING_CART_044	Validar que el ícono de carrito (núm) se actualice al restar 1ud. al artículo añadido desde la ficha del producto
    Scenario: TC_SHOPPING_CART_047	Intentar restar (-) 1 ud. del artículo cuando el contador esté en 1 ud. desde la ficha del producto
    Scenario: TC_SHOPPING_CART_048	Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
    Scenario: TC_SHOPPING_CART_050	Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito

    Scenario: TC_SHOPPING_CART_051	Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito
    Scenario: TC_SHOPPING_CART_052	Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
    Scenario: TC_SHOPPING_CART_054	Validar que al presionar el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
    Scenario: TC_SHOPPING_CART_058	Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor

    Scenario: TC_SHOPPING_CART_062	Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito


#TC_SHOPPING_CART_063	Validar que los artículos permanezcan en el carrito al cerrar el navegador y volver a abrir la tienda
#TC_SHOPPING_CART_064	Validar que los artículos añadidos permanezcan en el carrito al abrir la tienda desde una ventana diferente
#TC_SHOPPING_CART_065	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
#TC_SHOPPING_CART_066	Intentar agregar artículos al carrito, cerrar sesión, agregar artículos como usuario invitado, e iniciar sesión nuevamente