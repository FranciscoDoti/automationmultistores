@itau
Feature: itauPrueba

    Background: Pasos comunes
        Given Abro la pagina "itau"
        And Leo los datos de "itau"
        And Hago click en "Acceder"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "Prueba01."
        And Hago click en "IniciarSesion"

   Scenario:TC_SEARCH_011	Validar que se pueda seleccionar con el teclado un artículo aleatorio del listado de búsquedas sugeridas
        When Lleno el campo "BarraBuscadora" con "Caf"
        And Scrolleo hasta el elemento "UltimaOpcionDesplegable"
        And Presiona tecla ENTER en elemento "UltimaOpcionDesplegable"
        Then Verifico que el elemento "UltimaOpcionDesplegable" este habilitado