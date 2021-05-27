Feature: checkout tienda clic


Background: Ingreso a tiendaclic
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Clave" con "prueba01"
    And Hago click en "Inicio sesion"
    And Navego al producto qa automation

    #* Lleno el campo "busqueda" con "computadora"
    #* Hago click en "lupaBusqueda"
    #* Hago click en "objeto compra"

Scenario: Realizar una compra con Tarjeta de débito  
    * Hago click en "Comprar"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de debito"
    * Lleno los siguientes campos
        | Numero de tarjeta| 4507990000004905 |
        | Nombre| Alejandro Aper|
        | Vencimiento | 12/22 |
        | Codigo | 123 |
        | DNI | 123456789 |
    * Hago click en "pagar"
    * Verifico que el campo "compraExitosa" contenga el texto "Tu compra se completó con éxito"

Scenario Outline: Realizar una compra con Tarjeta de crédito en XX cuotas sin interés.
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de credito"
    * Lleno los siguientes campos
        | Numero de tarjeta| 4507990000004905 |
        | Cantidad de cuotas | <cuotas> |
        | Nombre| Alejandro Aper|
        | Vencimiento | 12/22 |
        | Codigo | 123 |
        | DNI | 123456789 |
    * Hago click en "pagar"
    * Verifico que el campo "compraExitosa" contenga el texto "Tu compra se completó con éxito"

    Examples:
        | cuotas |
        | 3 Cuotas  |
        | 6 Cuotas |
        | 12 Cuotas |


Scenario: Intentar realizar una compra con Tarjeta de crédito con fecha de vencimiento expirada.
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de credito"
    * Lleno los siguientes campos
        | Numero de tarjeta| 4507990000004905 |
        | Cantidad de cuotas | 3 Cuotas |
        | Nombre| Alejandro Aper|
        | Vencimiento | 12/20 |
        | Codigo | 123 |
        | DNI | 123456789 |
    * Verifico que el campo "tarjetaExpirada" contenga el texto "Revisá este dat"


Scenario: Intentar realizar una compra con Tarjeta de debito con fecha de vencimiento expirada.
    * Hago click en "Comprar"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de debito"
    * Lleno los siguientes campos
        | Numero de tarjeta| 4507990000004905 |
        | Nombre| Alejandro Aper|
        | Vencimiento | 12/20 |
        | Codigo | 123 |
        | DNI | 123456789 |
    * Verifico que el campo "tarjetaExpirada" contenga el texto "Revisá este dat"

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


#Scenario: Realizar una compra de un producto de Fravega con Tarjeta de débito.
#    * Hago click en "envio domicilio/sucursal"
#    * Lleno el campo "horario entrega" con "08:00 a: 20:00" #todo: si es domicilio
#    * Lleno los siguientes campos
#    | provincia| Capital Federal|
#    | sucursal | Almagro|


