Feature: direccion

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"


    Scenario: Agregar una dirección valida al usuario
        When Hago click en "NombreCuenta"
        And Hago click en "MiCuenta"
        And Hago click en "MisDirecciones"
        When Hago click en "CrearNuevaDireccion"
        And Lleno los siguientes campos leyendo la config
            | Alias        | RANDOM                |
            | DNI          | DniValido             |
            | Calle        | DireccionValida       |
            | Numero       | AlturaDireccionValida |
            | Departamento | DepartamentoValido    |
            | CodigoPostal | CodigoPostalValido    |
            | Ciudad       | CiudadValida          |
        And Hago click en "DropdownProvincia"
        And Hago click en "ProvinciaBuenosAires"
        And Hago click en "Guardar"
        Then  Verifico que el campo "DireccionAñadidaCorrectamente" contenga el texto "¡Dirección añadida correctamente!"


    Scenario: Verificar que se pueda editar una dirección ya agregada
        When Hago click en "NombreCuenta"
        And Hago click en "MiCuenta"
        And Hago click en "MisDirecciones"
        When Hago click en "Actualizar"
        And Lleno los siguientes campos leyendo la config
            | Numero | RANDOM |
        And Hago click en "Guardar"
        Then  Verifico que el campo "DireccionActualizadaCorrectamente" contenga el texto "¡Dirección actualizada correctamente!"


    Scenario: Verificar que se pueda eliminar una direccion ya agregada
        When Hago click en "NombreCuenta"
        And Hago click en "MiCuenta"
        And Hago click en "MisDirecciones"
        When Hago click en "EliminarDireccion"
        And Hago click en "SiEliminarDireccion"
        Then Verifico que el campo "DireccionEliminadaCorrectamente" contenga el texto "¡Dirección eliminada correctamente!"

    Scenario: Verificar que antes de finalizar una compra me permita agregar una nueva direccion
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "Producto"
        And Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "AñadirNuevaDireccionDeCompra"
        And Lleno los siguientes campos leyendo la config
            | DNI          | DniValido             |
            | Calle        | DireccionValida       |
            | Numero       | AlturaDireccionValida |
            | Departamento | DepartamentoValido    |
            | CodigoPostal | CodigoPostalValido    |
            | Ciudad       | CiudadValida          |
        And Hago click en "DropdownProvincia"
        And Hago click en "ProvinciaBuenosAires"
        And Hago click en "ContinuarYGuardarDireccion"
        Then Verifico que el elemento "DNI" no exista


    Scenario: Verificar que antes de finalizar una compra me permita editar una direccion
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "Producto"
        And Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "EditarDireccionDesdeCompra"
        And Lleno los siguientes campos leyendo la config
            | Numero | RANDOM |
        And Hago click en "ContinuarYGuardarDireccion"
        Then Verifico que el campo "CartelMetodoEnvio" contenga el texto "3."


    Scenario: Verificar que antes de finalizar una compra me permita borrar una direccion
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "Producto"
        And Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "EliminarDireccionDesdeCompra"
        Then Verifico que el campo "DireccionEliminadaCorrectamente" contenga el texto "¡Dirección eliminada correctamente!"



# Scenario: Validar propiedades del campo Alias
#    When Hago click en "NombreCuenta"
#   And Hago click en "MiCuenta"
#  And Hago click en "MisDirecciones"
# When Hago click en "CrearNuevaDireccion"
#And Valido propiedades del campo Alias

#Scenario: Validar propiedades del campo Nombre
#   When Hago click en "NombreCuenta"
#  And Hago click en "MiCuenta"
# And Hago click en "MisDirecciones"
# When Hago click en "CrearNuevaDireccion"
# And Valido propiedades del campo Nombre

#Scenario: Validar propiedades del campo Apellido
#   When Hago click en "NombreCuenta"
#  And Hago click en "MiCuenta"
# And Hago click en "MisDirecciones"
# When Hago click en "CrearNuevaDireccion"
#And Valido propiedades del campo Apellido



# Scenario: Validar propiedades del campo DNI
#    When Hago click en "NombreCuenta"
#  And Hago click en "MiCuenta"
#    And Hago click en "MisDirecciones"
#   When Hago click en "CrearNuevaDireccion"
#  And Valido propiedades del campo DNI


#  Scenario: Validar propiedades del campo Calle
#     When Hago click en "NombreCuenta"
#    And Hago click en "MiCuenta"
#   And Hago click en "MisDirecciones"
#  When Hago click en "CrearNuevaDireccion"
# And Valido propiedades del campo Calle


#Scenario: Validar propiedades del campo Piso
#   When Hago click en "NombreCuenta"
#  And Hago click en "MiCuenta"
# And Hago click en "MisDirecciones"
# When Hago click en "CrearNuevaDireccion"
#And Valido propiedades del campo Piso


#Scenario: Validar propiedades del campo Departamento
#   When Hago click en "NombreCuenta"
#  And Hago click en "MiCuenta"
# And Hago click en "MisDirecciones"
#When Hago click en "CrearNuevaDireccion"
#And Valido propiedades del campo Departamento