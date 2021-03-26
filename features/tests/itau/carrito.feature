@itau
Feature: carrito

    Scenario: Verificar que al seleccionar un producto se agregue al carrito
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"


    Scenario: Verificar que se pueda eliminar un producto del carrito
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        And Paso el mouse por encima de "Categorias"
        And Hago click en "Tecnologia" con Executor
        And Hago click en "AgregarAlCarrito" con Executor
        And Hago click en "EliminarProducto" con Executor
        Then Verifico que el elemento "CantidadProductosEnCarrito" no exista