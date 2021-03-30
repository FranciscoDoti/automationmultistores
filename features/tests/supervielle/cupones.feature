@supervielle
Feature: cupones

    Scenario: Verificar que al ingresar un cupón de descuento invalido aparezca el cartel Este cupon es invalido
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
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Lleno el campo "Cupon" con "456666h"
        And Hago click en "ValidarCupon"
        Then Verifico que el campo "MensajeCuponInvalido" contenga el texto "Este cupón es invalido"