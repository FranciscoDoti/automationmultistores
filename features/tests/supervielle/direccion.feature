@supervielle
Feature: supervielleDireccion

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "/MXPIce1"
        And Hago click en "IniciarSesion"
        When Hago click en "MisDirecciones"

    Scenario: Agregar una dirección valida al usuario
        When Hago click en "AñadirDireccion"
        And Hago click en "DesplegableProvincia"
        And Hago click en "Chaco"
        And Lleno los siguientes campos
            | Empresa       | Mundo          |
            | Calle         | Av. Corrientes |
            | Nro           | 3434           |
            | Piso          | 3              |
            | Dpto          | 13             |
            | CodigoPostal  | 3434           |
            | Ciudad        | Buenos Aires   |
            | TelefonoFijo  | 47682222       |
            | TelefonoMovil | 1547682222     |
            | Dni           | 39169777       |
            | Alias         | RANDOM         |
        And Hago click en "Guardar"
        Then Verifico que el campo "CartelMisDirecciones" contenga el texto "MIS DIRECCIONES"

    Scenario:  Verificar que se pueda editar una dirección ya agregada
        When Hago click en "ActualizarDireccion"
        And Lleno los siguientes campos
            | Calle | RANDOM |
            | Nro   | 3433   |
            | Alias | RANDOM |
            | Dpto  | 14     |
        And Hago click en "Guardar"
        Then Verifico que el campo "CartelMisDirecciones" contenga el texto "MIS DIRECCIONES"


