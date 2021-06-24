Feature: CHECKOUT_VALIDACIONES

Background: Ingreso a tiendaclic
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
    And Lleno el campo "Clave" con "claveValida" yendo a buscar la config
    And Hago click en "Inicio sesion"
    And Navego al producto qa automation

    #* Lleno el campo "busqueda" con "computadora"
    #* Hago click en "lupaBusqueda"
    #* Hago click en "objeto compra"

Scenario: Verifico que sea obligatorio aceptar las condiciones de venta
    * Hago click en "Comprar"
    And Scrolleo hasta el elemento "comprar"
    * Hago click en "comprar"
    Then Verifico que el campo "aceptar condiciones" contenga el texto "Por favor acepte las condiciones "


Scenario Outline: Verifico que no se pueda pagar sin haber llenado todos los campos de compra
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de debito"
    * Lleno los siguientes campos
        | Numero de tarjeta| <tarjeta> |
        | Nombre| <nombre>|
        | Vencimiento | <vence> |
        | Codigo | <code> |
        | DNI | <id> |
    * Verifico que el campo "campo requerido" contenga el texto "requerido"

    Examples:
        | tarjeta | nombre | vence | code | id |
        | | Alejandro | 12/23 | 123 | 45987654 |
        | 4507990000004905 | | 12/23 | 123 | 45987654 |
        | 4507990000004905 | Alejandro |  | 123 | 45987654 |
        | 4507990000004905 | Alejandro | 12/23 | | 45987654 |
        | 4507990000004905 | Alejandro | 12/23 | 123 | id |
