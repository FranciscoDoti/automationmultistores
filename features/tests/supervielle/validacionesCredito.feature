@supervielle

Feature: supervielleValidacionesComprasCredito

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"


    Scenario: Validar que no se habilite el botón siguiente si en el campo tarjeta ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaLetras              |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" no exista


    Scenario: Validar que no se habilite el botón siguiente si en el campo tarjeta ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaLetras              |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" no exista

    Scenario: Validar que no se habilite el botón siguiente si en el campo tarjeta ingreso más de 16 números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjeta+16numeros          |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" no exista


    Scenario: Validar que no se habilite el botón siguiente si en el campo tarjeta dejo el campo vacio
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     |  nroTarjetaVacio              |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" no exista

    Scenario: Validar que no se habilite el botón “siguiente” si en el campo tarjeta ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCaracteresEspeciales |
            | NombreApellido | nombreApellidoTarjetaCredito1  |
            | Vencimiento    | vencimientoTarjetaCredito1     |
            | CodSeguridad   | codSeguridadTarjetaCredito1    |
            | NroDocumento   | nroDocumentoTarjetaCredito1    |
        Then Verifico que el elemento "Siguiente" no exista

    Scenario: Validar que no se habilite el botón siguiente si ingreso un Nombre y apellido con números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1          |
            | NombreApellido | NombreTarjetaNumeros        |
            | Vencimiento    | vencimientoTarjetaCredito1  |
            | CodSeguridad   | codSeguridadTarjetaCredito1 |
            | NroDocumento   | nroDocumentoTarjetaCredito1 |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón siguiente si ingreso un Nombre y apellido con caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1                |
            | NombreApellido | NombreTarjetaCaracteresEspeciales |
            | Vencimiento    | vencimientoTarjetaCredito1        |
            | CodSeguridad   | codSeguridadTarjetaCredito1       |
            | NroDocumento   | nroDocumentoTarjetaCredito1       |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón siguiente si en el campo Nombre y apellido dejo el campo vacío
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1          |
            | NombreApellido | NombreTarjetaVacio          |
            | Vencimiento    | vencimientoTarjetaCredito1  |
            | CodSeguridad   | codSeguridadTarjetaCredito1 |
            | NroDocumento   | nroDocumentoTarjetaCredito1 |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón siguiente si en el campo vencimiento ingreso menos de 4 números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | VencimientoTarjeta-4numeros   |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    
    Scenario: Validar que no se habilite el botón siguiente si en el campo vencimiento ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | VencimientoTarjetaLetras      |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Validar que no se habilite el botón siguiente si en el campo vencimiento ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1                     |
            | NombreApellido | nombreApellidoTarjetaCredito1          |
            | Vencimiento    | VencimientoTarjetaCaracteresEspeciales |
            | CodSeguridad   | codSeguridadTarjetaCredito1            |
            | NroDocumento   | nroDocumentoTarjetaCredito1            |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón “siguiente” si en el campo cod de seguridad ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | CodSeguridadTarjetaLetras     |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón siguiente si en el campo cod de seguridad ingreso menos de 3 números
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | CodSeguridadTarjeta-3Numeros  |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" este deshabilitado


    Scenario:Validar que no se habilite el botón siguiente si en el campo cod de seguridad ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1                      |
            | NombreApellido | nombreApellidoTarjetaCredito1           |
            | Vencimiento    | vencimientoTarjetaCredito1              |
            | CodSeguridad   | CodSeguridadTarjetaCaracteresEspeciales |
            | NroDocumento   | nroDocumentoTarjetaCredito1             |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón siguiente si en el campo cod de seguridad dejo el campo vacio
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | CodSeguridadTarjetaVacio      |
            | NroDocumento   | nroDocumentoTarjetaCredito1   |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Validar que no se habilite el botón siguiente si en el campo Nro de documento ingreso letras
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | NroDocTarjetaLetras           |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Validar que no se habilite el botón siguiente si en el campo Nro de documento ingreso caracteres especiales
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1                |
            | NombreApellido | nombreApellidoTarjetaCredito1     |
            | Vencimiento    | vencimientoTarjetaCredito1        |
            | CodSeguridad   | codSeguridadTarjetaCredito1       |
            | NroDocumento   | NroDocTarjetaCaracteresEspeciales |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario:Validar que no se habilite el botón siguiente si en el campo Nro de documento dejo el campo vacio
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   |  NroDocTarjetaVacio           |
        Then Verifico que el elemento "Siguiente" este deshabilitado

    Scenario: Validar que no se habilite el botón siguiente si en el campo Nro de documento ingreso menos de 7 digitos
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | nroTarjetaCredito1            |
            | NombreApellido | nombreApellidoTarjetaCredito1 |
            | Vencimiento    | vencimientoTarjetaCredito1    |
            | CodSeguridad   | codSeguridadTarjetaCredito1   |
            | NroDocumento   | NroDocTarjeta-9Digitos        |
        Then Verifico que el elemento "Siguiente" este deshabilitado
