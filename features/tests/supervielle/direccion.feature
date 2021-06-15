@supervielle
Feature: supervielleDireccion

    Background: Pasos comunes
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "usuario1" yendo a buscar la config
        And Lleno el campo "Contraseña" con "passwordUsuario1" yendo a buscar la config
        And Hago click en "IniciarSesion"
        When Hago click en "MisDirecciones"

    Scenario: Agregar una dirección valida al usuario
        When Hago click en "AñadirDireccion"
        And Hago click en "DesplegableProvincia"
        And Hago click en "Chaco"
        And Lleno los siguientes campos leyendo la config
            | Empresa       | direccion.Empresa        |
            | Calle         | direccion.Calle          |
            | Nro           | direccion.Nro            |
            | Piso          | direccion.Piso           |
            | Dpto          | direccion.Dpto           |
            | CodigoPostal  | direccion.CodigoPostal   |
            | Ciudad        | direccion.Ciudad         |
            | TelefonoFijo  | direccion.TelefonoFijo   |
            | TelefonoMovil | direccion.TelefonoMovil  |
            | Dni           | direccion.Dni            |
            | Alias         | direccion.Alias          |
        And Hago click en "Guardar"
        Then Verifico que el campo "CartelMisDirecciones" contenga el texto "MIS DIRECCIONES"

    Scenario:  Verificar que se pueda editar una dirección ya agregada
        When Hago click en "ActualizarDireccion"
        And Lleno los siguientes campos leyendo la config
            | Calle | RANDOM                 |
            | Nro   | direccion.NroAgregado  |
            | Alias | RANDOM                 |
            | Dpto  | direccion.DptoAgregado |
        And Hago click en "Guardar"
        Then Verifico que el campo "CartelMisDirecciones" contenga el texto "MIS DIRECCIONES"


