@supervielle
Feature: supervielleValidacionesComprasCredito

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "/MXPIce1"
        And Hago click en "IniciarSesion"
    
    @PRUEBA
    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | AAAAAAAAA    |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" no exista


    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | AAAAAAAAA    |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" no exista

    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta ingreso más de 16 números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 222222222222222222 |
            | NombreApellido | JUANA SUAREZ       |
            | Vencimiento    | 1223               |
            | CodSeguridad   | 123                |
            | NroDocumento   | 39169244           |
        Then Verifico que el elemento "Siguiente" no exista


    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta dejo el campo vacio
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     |              |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" no exista

    Scenario: Verificar que no se habilite el botón “siguiente” si en el campo tarjeta ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | &/$/#$!      |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" no exista

    Scenario: Verificar que no se habilite el botón siguiente si ingreso un Nombre y apellido con números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | 4444444          |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si ingreso un Nombre y apellido con caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | #%&$!#!#         |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo Nombre y apellido dejo el campo vacío
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido |                  |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo vencimiento ingreso menos de 4 números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 12               |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo vencimiento ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | AAA              |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Verificar que no se habilite el botón siguiente si en el campo vencimiento ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | %$!              |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón “siguiente” si en el campo cod de seguridad ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | AAF              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo cod de seguridad ingreso menos de 3 números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 12               |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Verificar que no se habilite el botón siguiente si en el campo cod de seguridad ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | $%^              |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo cod de seguridad dejo el campo vacio
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   |                  |
            | NroDocumento   | 39169244         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Verificar que no se habilite el botón siguiente si en el campo Nro de documento ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | AAAAAAAA         |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Verificar que no se habilite el botón siguiente si en el campo Nro de documento ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | ###$"!"          |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Verificar que no se habilite el botón siguiente si en el campo Nro de documento dejo el campo vacio
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   |                  |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo Nro de documento ingreso menos de 7 digitos
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169            |
        Then Verifico que el elemento "Siguiente" este deshabilitado
