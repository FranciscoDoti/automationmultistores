@itau
Feature: itauPrueba

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"

   Scenario:TC_SHOPPING_CART_068	Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla
        When Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoUnoMismoProvedor"
        And Hago click en "BarraBuscadora"
        And Lleno el campo "BarraBuscadora" con "VISUAR"
        And Hago click en "Buscar"
        And Hago click en "ProductoDosMismoProvedor"
        And Hago click en "MiCuenta"
        And Hago click en "Salir"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "CantidadProductosEnCarrito" contenga el texto "2"