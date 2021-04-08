Feature: direccion

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"
        When Hago click en "NombreCuenta"
        And Hago click en "MiCuenta"
        And Hago click en "MisDirecciones"


    Scenario: Agregar una dirección valida al usuario
        When Hago click en "CrearNuevaDireccion"
        And Lleno los siguientes campos
            | Alias        | RANDOM          |
            | DNI          | 3999999         |
            | Calle        | Blanco Encalada |
            | Numero       | 2311            |
            | Departamento | A               |
            | CodigoPostal | 1428            |
            | Ciudad       | CABA            |
        And Hago click en "DropdownProvincia"
        And Hago click en "ProvinciaBuenosAires"
        And Hago click en "Guardar"
        Then  Verifico que el campo "DireccionAñadidaCorrectamente" contenga el texto "¡Dirección añadida correctamente!"

    Scenario: Verificar que se pueda editar una dirección ya agregada
        When Hago click en "Actualizar"
        And Lleno los siguientes campos
            | Alias | RANDOM |
        And Hago click en "Guardar"
         Then  Verifico que el campo "DireccionActualizadaCorrectamente" contenga el texto "¡Dirección actualizada correctamente!"