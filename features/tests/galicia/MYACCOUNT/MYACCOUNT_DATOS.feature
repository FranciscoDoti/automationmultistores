Feature: MYACCOUNT_DATOS

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"
        And  Hago click en "NombreCuenta"
        And Hago click en "MiCuenta"
        And Hago click en "MisDatos"

    Scenario: TC_MY_ACCOUNT_032 Verificar que al editar el correo electronico en MisDatos se actualice correctamente
        When Lleno los siguientes campos leyendo la config
            | Email | EmailEditadoValido |
        And Hago click en "GuardarDatos"


    Scenario: TC_MY_ACCOUNT_033 Verificar que al tildar el checkpoint para recibir ofertas al mail se actualice correctamente
        When Hago click en "RecibirOfertas"
        And Hago click en "GuardarDatos"


    Scenario: TC_MY_ACCOUNT_034 Verificar que me permita editar el pronombre
        When Hago click en "PronombreSr"
        And Hago click en "GuardarDatos"
