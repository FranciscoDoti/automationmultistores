Feature: misDatos

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"
        And  Hago click en "NombreCuenta"
        And Hago click en "MiCuenta"
        And Hago click en "MisDatos"

    Scenario: Verificar que al editar el correo electronico en MisDatos se actualice correctamente
        When Lleno los siguientes campos
            | Email | EmailEditadoValido |
        And Hago click en "GuardarDatos"


    Scenario: Verificar que al tildar el checkpoint para recibir ofertas al mail se actualice correctamente
        When Hago click en "RecibirOfertas"
        And Hago click en "GuardarDatos"


    Scenario: Verificar que me permita editar el pronombre
        When Hago click en "PronombreSr"
        And Hago click en "GuardarDatos"
