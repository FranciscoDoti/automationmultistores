@SHOPPING_CART
Feature: SHOPPING_CART

        Background: Pasos comunes
                Given Abro la pagina "icbc"
                And Leo los datos de "icbc"
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                When Validar que el "Carrito" no tenga productos agregados
        @PRUEBA
        Scenario: TC_SHOPPING_CART_001_Validar sección Mi carrito según maquetación.
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                When Verificar que el elemento del carrito "PrimerProductoCarrito" contenga el producto "ProductoAutomation" yendo a buscar la config