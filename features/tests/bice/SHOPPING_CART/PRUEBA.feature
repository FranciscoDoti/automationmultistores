@bice
@SHOPPING_CART
Feature: SHOPPING_CART

    Background: Pasos comunes
        Given Abro la pagina "bice"
        And Leo los datos de "bice"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "LoginAcceder"



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