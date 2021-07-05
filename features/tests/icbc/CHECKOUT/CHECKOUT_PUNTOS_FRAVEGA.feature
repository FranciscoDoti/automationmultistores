@CHECKOUT_PUNTOS_FRAVEGA
Feature: CHECKOUT_PUNTOS_FRAVEGA

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login
        When Lleno el campo "Usuario" con "usuarioValido2" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        When Validar que el "Carrito" no tenga productos agregados

#    Scenario: TC_CHECKOUT_073_Realizar una compra de un artículo Frávega con puntos.
#        And Lleno el campo "Buscador" con "Fravega"
#        And Hago click en "Buscar"
#        And Hago click en "PrimerProducto"
#        And Hago click en "SoloPuntos"
#        And Hago click en "Comprar"
#        And Hago click en "AceptoCondiciones"
#        And Hago click en "IrACaja"
#        And Hago click en "PagarConPuntos"
#        And Aceptar alerta desea pagar con puntos
#        Then Verifico que el campo "ExitoCompra" contenga el texto "Transacción aceptada"