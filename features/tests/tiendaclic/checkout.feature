Feature: checkout tienda clic



Background: Ingreso a tiendaclic
    Given Abro la pagina "tiendaclic"
    And Leo los datos de "tiendaclic"
    And Hago click en "IniciaSesion"
    And Lleno el campo "Email" con "jhernandez@aper.com"
    And Lleno el campo "Clave" con "11112222"
    And Hago click en "Inicio sesion"

Scenario: Realizar una compra con Tarjeta de débito 
    And Lleno el campo "busqueda" con "computadora"
    And Hago click en "comprar"
    * Hago click en "confirmar compra"


@PRUEBA
Scenario: Realizar una compra con Tarjeta de crédito en x cuotas sin interés.
    * Lleno el campo "busqueda" con "computadora"
    * Hago click en "lupaBusqueda"
    * Hago click en "objeto compra"
    * Hago click en "confirmar compra"
    * Hago click en "condiciones" con Executor
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
    * Hago click en "Tarjeta de debito"
    * Hago click en "idem anterior"
    * Verifico que el campo "compraError" contenga el texto "Hemos detectado un error con su pago"


Scenario: Realizar una compra con Tarjeta de crédito en x cuotas con interés.
Scenario: Realizar una compra con Tarjeta de crédito con xxAhora.
Scenario: Realizar una compra con Tarjeta de débito Tokenizada.
Scenario: Realizar una compra con Tarjeta de crédito en x cuotas sin interés Tokenizada.
Scenario: Realizar una compra con Tarjeta de crédito en x cuotas con interés Tokenizada.
Scenario: Realizar una compra con Tarjeta de crédito con xxAhora Tokenizada.

Scenario: Realizar una compra de un producto de Fravega con Tarjeta de débito.
    * Hago click en "envio domicilio/sucursal"
    * Lleno el campo "horario entrega" con "08:00 a: 20:00" #todo: si es domicilio
    * Lleno los siguientes campos
    | provincia| Capital Federal|
    | sucursal | Almagro|



Scenario: Realizar una compra de un producto de Fravega con Tarjeta de crédito en x cuotas sin interés.
Scenario: Realizar una compra de un producto de Fravega con Tarjeta de crédito en x cuotas con interés.
Scenario: Realizar una compra de un producto de Fravega con Tarjeta de crédito con xxAhora.
Scenario: Realizar una compra de un producto de Fravega con Tarjeta de débito Tokenizada.
Scenario: Realizar una compra de un producto de Fravega con Tarjeta de crédito en x cuotas sin interés Tokenizada.
Scenario: Realizar una compra de un producto de Fravega con Tarjeta de crédito en x cuotas con interés Tokenizada.
Scenario: Realizar una compra de un producto de Fravega con Tarjeta de crédito con xxAhora Tokenizada.


Scenario: Realizar una compra de un producto con tarjeta de crédito Decidir V2 retiro en tienda.
Scenario: Realizar una compra de un producto con tarjeta de crédito Decidir V2 con envío.
Scenario: Realizar una compra de un producto con tarjeta de débito Decidir V2 retiro en tienda.
Scenario: Realizar una compra de un producto con tarjeta de débito Decidir V2 con envío.
Scenario: Realizar una compra de un producto con tarjeta de débito Decidir V2 con igual dirección de entrega y facturación.
Scenario: Realizar una compra de un producto con tarjeta de débito Decidir V2 con distinta dirección de entrega y facturación.