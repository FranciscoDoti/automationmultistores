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


    Scenario:TC_SHOPPING_CART_034	Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Obtengo el texto del elemento "subtotal" y lo guardo en la variable "Submonto"
        And Hago click en "RestarUnArticulo"
        Then Verifico que el valor de "Submonto" sea la mitad


    Scenario:TC_SHOPPING_CART_035	Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "Carrito"
        And Hago click en "SumarUnArticulo"
        And Obtengo el texto del elemento "total" y lo guardo en la variable "Total"
        And Hago click en "RestarUnArticulo"
        Then Verifico que el valor de "Total" sea la mitad

