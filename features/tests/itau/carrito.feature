@itau
Feature: carrito

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia"

    Scenario: Verificar que al seleccionar un producto se agregue al carrito
        When Hago click en "AgregarAlCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"



    Scenario: Verificar que se pueda eliminar un producto del carrito
        When Hago click en "AgregarAlCarrito"
        And Hago click en "EliminarProducto"
        Then Verifico que el campo "CartelCarritoVacio" contenga el texto "No hay más artículos en tu carrito"