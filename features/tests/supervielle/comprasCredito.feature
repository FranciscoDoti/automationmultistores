@supervielle
Feature: comprasCredito


    Scenario: Realizar una compra con tarjeta de crédito sin cupón de descuento
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra con tarjeta de crédito y cupón de descuento
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en un producto con precio mayor a ""
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Lleno el campo "Cupon" con "NMWZ5EIF"
        And Hago click en "ValidarCupon"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta ingreso letras
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | AAAAAAAAA    |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" este deshabilitado


    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta ingreso letras
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | AAAAAAAAA    |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta ingreso más de 16 números
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 222222222222222222 |
            | NombreApellido | JUANA SUAREZ       |
            | Vencimiento    | 1223               |
            | CodSeguridad   | 123                |
            | NroDocumento   | 39169244           |
        Then Verifico que el elemento "Siguiente" este deshabilitado


    Scenario: Verificar que no se habilite el botón siguiente si en el campo tarjeta dejo el campo vacio
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     |              |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón “siguiente” si en el campo tarjeta ingreso caracteres especiales
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | &/$/#$!      |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1223         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Verificar que no se habilite el botón siguiente si ingreso un Nombre y apellido con números
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

    Scenario: Verificar que al apretar el botón siguiente se cargue la pagina con las opciones de cuotas
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        Then Verifico que el campo "UnaCuota" contenga el texto " 1 Cuota sin interés "

    Scenario: Verificar que no se habilite el botón Continuar si no se seleccionó ninguna cuota
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        Then Verifico que el elemento "Pagar" este deshabilitado

    Scenario:Verificar que al intentar realizar una compra con una tarjeta vencida aparezca un cartel de error
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "ErrorTarjetaVencida" contenga el texto "invalid_expiry_date"


    Scenario: Realizar una compra con tarjeta de crédito en 3 cuotas
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "TresCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra con tarjeta de crédito en 6 cuotas
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "SeisCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra con tarjeta de crédito en 9 cuotas
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "NueveCuotas"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra con tarjeta de credito en x cuotas sin interes
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
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1223             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra con tarjeta de credito en x cuotas sin interes TOKENIZADA
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
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "UnaCuotaTokenizado"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra de un producto de Fravega con tarjeta de credito en x cuotas sin interes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
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
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "UnaCuota"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"


    Scenario: Realizar una compra de un producto de Fravega con tarjeta de credito en x cuotas sin interes TOKENIZADA
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "UnaCuotaTokenizado"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario:  Realizar una compra de un producto de Fravega con tarjeta de credito con xxAhora TOKENIZADA
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaTokenizada"
        And Hago click en "Continuar"
        And Hago click en "AhoraDoce"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra de un producto de Fravega con tarjeta de credito con xxAhora
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Abro la siguiente Url "https://supervielle-uat.aper.com/fravega/24434-aire-acondicionado-split-frio-calor-philco-phs25h13x-25kfc-re-copado.html"
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
            | NroDocumento   | 39169244         |
        And Hago click en "Siguiente"
        And Hago click en "AhoraDoce"
        And Hago click en "Pagar"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"