@supervielle
@SHOPPING_CART

Feature: SHOPPING_CART

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"

    Scenario: TC_SHOPPING_CART_003 Validar que al seleccionar un producto se agregue al carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_009 Validar que se pueda eliminar un producto del carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        And Hago click en "EliminarProductoCarrito"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "Su carrito está vacío."

    
    Scenario: TC_SHOPPING_CART_010 Validar que se pueda agregar un artículo al carrito desde la página de inicio
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "HomeLink"
        And Hago click en "PrimerProductoInicio"
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_011 Validar que se pueda agregar un artículo al carrito desde una categoría aleatoria
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "PrimerCategoria"
        And Hago click en "PrimerProductoCategoria"
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_012 Validar que se pueda agregar un artículo al carrito desde una subcategoría aleatoria
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Paso el mouse por encima de "Tecno"
        And Hago click en "PrimerSubCategoria"
        And Hago click en "PrimerProductoCategoria"
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_013 Validar que se pueda agregar un artículo al carrito desde una subsubcategoría aleatoria
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Paso el mouse por encima de "Tecno"
        And Hago click en "PrimerSubSubCategoria"
        And Hago click en "PrimerProductoCategoria"
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_014 Validar que se pueda agregar un artículo al carrito desde la ficha de un artículo aleatorio
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario: TC_SHOPPING_CART_015 Validar que se pueda agregar un artículo aleatorio al carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_016 Validar que el ícono de carrito (núm) se actualice al agregar un artículo aleatorio
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_017 Validar que al pasar el puntero por el botón de carrito se despliegue una lista con el artículo añadido
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        Then Verifico que exista el elemento "DesplegableCarritoDisplay"

    
    Scenario: TC_SHOPPING_CART_020 Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde lista desplegable
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Hago click en "EliminarProducto1CarritoDesdeDesplegable"
        Then Verifico que el campo "AlertCarritoVacio" contenga el texto "Su carrito está vacío."

    
    Scenario: TC_SHOPPING_CART_024 Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        


    Scenario: TC_SHOPPING_CART_025 Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
    
    
    Scenario: TC_SHOPPING_CART_026 Validar que se actualice el importe subtotal al sumar (+) 1 ud. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        When Obtengo el texto del elemento "SubTotalCarrito" y lo guardo en la variable "MontoSubTotal"
        And Hago click en "AñadirUnidadItem1"
        Then Verifico que el elemento "SubTotalCarrito" contiene el número alojado en la variable "MontoSubTotal" "multiplicado" por "2"

    
    Scenario: TC_SHOPPING_CART_027 Validar que se actualice el importe total al sumar (+) 1 ud. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        Then Verifico que el monto en el elemento "MontoTotalCarrito" es la suma de los montos en los elementos "SubTotalCarrito" y "CostoEnvioCarrito"

    
    Scenario: TC_SHOPPING_CART_028 Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "AñadirUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"

    
    Scenario: TC_SHOPPING_CART_029 Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "AñadirUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"

<<<<<<< HEAD
    
=======
>>>>>>> fc501310dadc7d7cee368f526a1ac07bc548c55b
    Scenario: TC_SHOPPING_CART_030 Validar que se actualice el importe subtotal al sumar (+) 2 uds. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        When Obtengo el texto del elemento "SubTotalCarrito" y lo guardo en la variable "MontoSubTotal"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"
        Then Verifico que el elemento "SubTotalCarrito" contiene el número alojado en la variable "MontoSubTotal" "multiplicado" por "3"

    
    Scenario: TC_SHOPPING_CART_031 Validar que se actualice el importe total al sumar (+) 2 uds. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Hago click en "ProductoEnDesplegableCarrito"
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Hago click en "ProductoEnDesplegableCarrito"
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        Then Verifico que el monto en el elemento "MontoTotalCarrito" es la suma de los montos en los elementos "SubTotalCarrito" y "CostoEnvioCarrito"

    
    Scenario: TC_SHOPPING_CART_032 Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "SustraerUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
    
    
    Scenario: TC_SHOPPING_CART_033 Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "SustraerUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
    
    
    Scenario: TC_SHOPPING_CART_034 Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        When Obtengo el texto del elemento "SubTotalCarrito" y lo guardo en la variable "MontoSubTotal"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "3"
        And Hago click en "SustraerUnidadItem1"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        Then Verifico que el elemento "SubTotalCarrito" contiene el número alojado en la variable "MontoSubTotal" "multiplicado" por "2"

    
    Scenario: TC_SHOPPING_CART_035 Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "AñadirUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "SustraerUnidadItem1"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        Then Verifico que el monto en el elemento "MontoTotalCarrito" es la suma de los montos en los elementos "SubTotalCarrito" y "CostoEnvioCarrito"

    
    Scenario: TC_SHOPPING_CART_039 Validar que se pueda sumar (+) 1 ud. al artículo añadido al carrito desde la ficha del producto
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Hago click en "ProductoEnDesplegableCarrito"
        When Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"


    Scenario: TC_SHOPPING_CART_040 Validar que el ícono de carrito (núm) se actualice al sumar 1 ud. al artículo desde la ficha del producto
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Hago click en "ProductoEnDesplegableCarrito"
        When Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    
    Scenario: TC_SHOPPING_CART_048 Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "EliminarItem1"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "Su carrito está vacío."

    
    Scenario: TC_SHOPPING_CART_050 Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "EliminarItem1"
        Then Se compara el valor del atributo "value" de el elemento "CartelCarritoVacio" con el valor "null"


    Scenario: TC_SHOPPING_CART_051 Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"


    Scenario: TC_SHOPPING_CART_052 Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    
    Scenario: TC_SHOPPING_CART_053 Validar que al pasar el puntero por el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        Then Verifico que exista el elemento "DesplegableCarritoDisplay"

    
    Scenario: TC_SHOPPING_CART_054 Validar que al presionar el botón de carrito se despliegue la lista con dos artículos del mismo proveedor
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "CantidadProductosEnCarrito"
        Then Verifico que exista el elemento "DesplegableCarritoDisplay"

    
    Scenario: TC_SHOPPING_CART_056 Validar que se pueda eliminar un artículo desde la lista desplegable
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Verifico que exista el elemento "DesplegableCarritoDisplay"
        And Hago click en "EliminarProducto1CarritoDesdeDesplegable"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    
    Scenario: TC_SHOPPING_CART_058 Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Verifico que exista el elemento "DesplegableCarritoDisplay"
        And Hago click en "EliminarProducto1CarritoDesdeDesplegable"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        
    
    Scenario: TC_SHOPPING_CART_059 Validar que se actualice la lista desplegable al eliminar un artículo
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Paso el mouse por encima de "CantidadProductosEnCarrito"
        And Verifico que exista el elemento "DesplegableCarritoDisplay"
        And Hago click en "EliminarProducto1CarritoDesdeDesplegable"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    
    Scenario: TC_SHOPPING_CART_062 Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        Then Verifico que exista el elemento "DesplegableCarritoDisplay"


    Scenario: TC_SHOPPING_CART_065 Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Abro la siguiente Url "linkProductoAutomatizacion1" yendo a buscar la config
        When Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
        When Abro la siguiente Url "linkProductoAutomatizacion2" yendo a buscar la config
        And Hago click en "AgregarAlCarrito"
        And Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"
        And Hago click en "CerrarSesion"
        When Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"

    

        