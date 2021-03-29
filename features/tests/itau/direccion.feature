@itau
Feature: direccion

  @PRUEBA
  Scenario: Agregar una dirección valida al usuario
    Given Abro la pagina "itau"
    And Leo los datos de "itau"
    And Hago click en "Acceder"
    And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Contraseña" con "Prueba01."
    And Hago click en "IniciarSesion"
    And Hago click en "Direcciones" con Executor
    And Hago click en "AñadirNuevaDireccion" con Executor
    And Lleno los siguientes campos
      | Nombre          | Mundo          |
      | Apellido        | Av. Corrientes |
      | Calle           | 3434           |
      | Numero          | 3              |
      | Piso            | 13             |
      | Departamento    | 3434           |
      | Ruc             | 0101           |
      | CedulaIdentidad | 47682222       |
      | Telefono        | 1547682222     |
    And Hago click en "Pais" con Executor
    And Hago click en "Paraguay" con Executor
    And Hago click en "Ciudad"
    And Hago click en "Cedrales"
    And Hago click en "Guardar" con Executor
    Then Verifico que el campo "MensajeDeExitoDireccionAgregada" contenga el texto "¡Dirección añadida correctamente!"



  Scenario: Verificar que se pueda editar una dirección ya agregada
    Given Abro la pagina "itau"
    And Leo los datos de "itau"
    And Hago click en "Acceder"
    And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
    And Lleno el campo "Contraseña" con "Prueba01."
    And Hago click en "IniciarSesion"
    And Hago click en "Direcciones" con Executor
    And Hago click en "ActualizarDireccion" con Executor
    And Lleno los siguientes campos
      | Calle | RANDOM |
    And Hago click en "Guardar" con Executor
    Then Verifico que el campo "MensajeDeExitoDireccionActualizada" contenga el texto "¡Dirección actualizada correctamente!"

