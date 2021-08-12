@itau
Feature: itauPrueba

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"

   Scenario:TC_SHOPPING_CART_014	Validar que se pueda agregar un artículo al carrito desde una subcategoría aleatoria
        When Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"
        And Hago click en "Subcategoria"
        And Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"
