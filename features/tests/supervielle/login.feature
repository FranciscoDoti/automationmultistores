Feature: login

    Scenario: Verificar que no se pueda iniciar sesión con un usuario no registrado
    Given Abro la pagina "supervielle"
    And Leo los datos de "supervielle"
    And Hago click en 
    And Lleno el campo "Usuario" con "lqaautomation@gmail.com"
    And Lleno el campo "Contraseña" con "prueba01"




