Feature: checkout tienda clic


Background: Ingreso a tiendaclic
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Clave" con "prueba01"
    And Hago click en "Inicio sesion"

Scenario: Realizar una compra con Tarjeta de débito  
    * Lleno el campo "busqueda" con "impresora"
    * Hago click en "lupaBusqueda"
    * Hago click en "objeto compra"
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
    * Verifico que el campo "compraExitosa" contenga el texto "Tu compra se completó con éxito"


Scenario: Realizar una compra con Tarjeta de crédito en 6 cuotas sin interés.
    * Lleno el campo "busqueda" con "computadora"
    * Hago click en "lupaBusqueda"
    * Hago click en "objeto compra"
    * Hago click en "confirmar compra"
    * Scrolleo hasta el elemento "condiciones" y hago click
    * Hago click en "confirmar compra"
    * Hago click en "Tarjeta de credito"
    * Lleno los siguientes campos
        | Numero de tarjeta| 4507990000004905 |
        | Cantidad de cuotas | 6 Cuotas |
        | Nombre| Alejandro Aper|
        | Vencimiento | 12/22 |
        | Codigo | 123 |
        | DNI | 123456789 |
    * Hago click en "pagar"
    * Verifico que el campo "compraExitosa" contenga el texto "Tu compra se completó con éxito"

@PRUEBA
Scenario: Intentar realizar una compra con Tarjeta de crédito con fecha de vencimiento expirada.
    * Lleno el campo "busqueda" con "impresora"
    * Hago click en "lupaBusqueda"
    * Hago click en "objeto compra"
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


    * Verifico que el campo "compraError" contenga el texto "Hemos detectado un error con su pago"
    * Hago click en "idem anterior"
    * Hago click en "Tarjeta de debito"


Scenario: Realizar una compra de un producto de Fravega con Tarjeta de débito.
    * Hago click en "envio domicilio/sucursal"
    * Lleno el campo "horario entrega" con "08:00 a: 20:00" #todo: si es domicilio
    * Lleno los siguientes campos
    | provincia| Capital Federal|
    | sucursal | Almagro|


