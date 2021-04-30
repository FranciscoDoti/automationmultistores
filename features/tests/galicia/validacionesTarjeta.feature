Feature: validacionesTarjeta

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "Producto"

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo tarjeta ingreso menos de 16 números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990      |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1219         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo tarjeta dejo el campo vacío
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     |              |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1219         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo tarjeta ingreso caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | %&$#         |
            | NombreApellido | JUANA SUAREZ |
            | Vencimiento    | 1219         |
            | CodSeguridad   | 123          |
            | NroDocumento   | 39169244     |
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si ingreso un Nombre y apellido con números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | 111111111111     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si ingreso un Nombre y apellido con caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | &%##!$%          |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo Nombre y apellido dejo el campo vacío
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido |                  |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo vencimiento ingreso menos de 4 números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 121              |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo vencimiento ingreso letras
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | AAAA             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo vencimiento ingreso caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | %%%%             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo cod de seguridad ingreso letras
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | AAAA             |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo cod de seguridad ingreso menos de 3 números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 12               |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo cod de seguridad ingreso caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | $#&              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo cod de seguridad dejo el campo vacio
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   |                  |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo Nro de documento ingreso letras
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | AAAAA            |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo Nro de documento ingreso caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | $#%&             |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: Verificar que no se habilite el botón “continuar” si en el campo Nro de documento dejo el campo vacio
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   |                  |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado


    Scenario: Verificar que no se habilite el botón “continuar” si en el campo Nro de documento ingreso menos de 7 digitos
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1219             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169            |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado