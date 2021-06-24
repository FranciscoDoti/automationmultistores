@supervielle
@SHOPPING_CART

Feature: SHOPPING_CART

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"

    Scenario: TC_SHOPPING_CART_003 Validar que al seleccionar un producto se agregue al carrito
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"


    Scenario: TC_SHOPPING_CART_009 Validar que se pueda eliminar un producto del carrito
        When Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        And Hago click en "EliminarProductoCarrito"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "Su carrito está vacío."



