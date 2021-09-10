@CHECKOUT_TRANSFERENCIA
Feature: CHECKOUT_TRANSFERENCIA

    Background: Pasos comunes
        Given Abro la pagina "scotia"
        And Leo los datos de "scotia"
        And Hago click en "Acceder"
        Then Verifico que el elemento "FormularioInicioSesion" este habilitado
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        When Validar que el "ContadorCarrito" esté en cero
        
    Scenario: TC_CHECKOUT_127_Realizar una compra abonando con transferencia bancaria
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "Transferencia"
        #Then Espera
        And Hago click en "TyC"
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

    Scenario: TC_CHECKOUT_127_1_Realizar una compra con transferencia bancaria en x cuotas sin interés
        When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "Transferencia"
        #Then Espera
        And Hago click en "TyC"
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"


Scenario: TC_CHECKOUT_127_4_Realizar una compra abonando con transferencia bancaria y envío con cargo
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "EnvioBASEONE"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "Transferencia"
        #Then Espera
        And Hago click en "TyC"
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

Scenario: TC_CHECKOUT_127_5_Realizar una compra abonando con transferencia bancaria y retiro en tienda
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "Transferencia"
        #Then Espera
        And Hago click en "TyC"
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

Scenario: TC_CHECKOUT_127_6_Realizar una compra abonando con transferencia bancaria con igual dirección de entrega y facturación
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "Continuar"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "Transferencia"
        #Then Espera
        And Hago click en "TyC"
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"

Scenario: TC_CHECKOUT_127_7_Realizar una compra abonando con transferencia bancaria con distinta dirección de entrega y facturación
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "Comprar"
        And Hago click en "CambiarDireccionFacturacion"
        And Hago click en "SegundaDireccion"
        And Hago click en "Continuar"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "Transferencia"
        #Then Espera
        And Hago click en "TyC"
        And Hago click en "Pagar"
        Then Verifico que el campo "CartelConfirmacionPedido" contenga el texto "SU PEDIDO ESTÁ CONFIRMADO"
        When Obtengo el texto del elemento "ReferenciaPedido" y lo guardo en la variable "Pedido"