@supervielle
Feature: supervielleCupones

    Scenario: Validar que al ingresar un cupón de descuento invalido aparezca el cartel Este cupon es invalido
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Lleno el campo "Cupon" con "codigoCuponInvalido1" yendo a buscar la config
        And Hago click en "ValidarCupon"
        Then Verifico que el campo "MensajeCuponInvalido" contenga el texto "Este cupón es invalido"