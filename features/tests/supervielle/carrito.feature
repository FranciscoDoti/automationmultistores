@supervielle
Feature: carrito


    Scenario: Verificar que al seleccionar un producto se agregue al carrito
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "1"

    Scenario:  Verificar que se pueda eliminar un producto del carrito
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "MiCarrito"
        And Hago click en "EliminarProductoCarrito"
        Then Verifico que el elemento "CantidadProductosEnCarrito" no exista



