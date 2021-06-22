@CHECKOUT_VALIDACIONES_DEBITO
Feature: CHECKOUT_VALIDACIONES_DEBITO

    Background: Pasos comunes
        Given Abro la pagina "icbc"
        And Leo los datos de "icbc"
        And Hago click en "Ingresar"
        And Me muevo a la ventana de Login
        When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "IniciarSesion"
        And Me muevo a la pagina principal
        When Validar que el "Carrito" no tenga productos agregados
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "SoloPesos"
        And Hago click en "Comprar"
        And Hago click en "AceptoCondiciones"
        And Hago click en "IrACaja"

    Scenario: TC_CHECKOUT_142_Validar propiedades de campo Número de tarjeta: Aparece cartel de Revisar Dato ingresando tarjeta de debito incorrecta
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaIncorrecta |
            | Codigo           | Codigo               |
            | FechaVencimiento | FechaVencimiento     |
            | Nombre           | Nombre               |
            | NroDocumento     | NroDocumento         |
        Then Verifico que el campo "ErrorNumeroTarjeta" contenga el texto "Revisá este dato"

    Scenario: TC_CHECKOUT_142_Validar propiedades de campo Número de tarjeta: Aparece cartel de Revisar Dato ingresando tarjeta de debito inválida
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaInvalido |
            | Codigo           | Codigo             |
            | FechaVencimiento | FechaVencimiento   |
            | Nombre           | Nombre             |
            | NroDocumento     | NroDocumento       |
        Then Verifico que el campo "ErrorNumeroTarjeta" contenga el texto "Revisá este dato"

    Scenario: TC_CHECKOUT_142_Validar propiedades de campo Número de tarjeta: Aparece cartel de Campo Requerido dejando el campo vacío
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       |                  |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        Then Verifico que el campo "ErrorNumeroTarjeta" contenga el texto "Campo requerido"

    Scenario: TC_CHECKOUT_143_Validar propiedades de campo Nombre y apellido: Aparece cartel de Maximo caracteres permitidos al exceder el límite
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | NombreInvalido   |
            | NroDocumento     | NroDocumento     |
        Then Verifico que el campo "ErrorNombreApellido" contenga el texto "Máximo 25 caracteres"
    
    Scenario: TC_CHECKOUT_143_Validar propiedades de campo Nombre y apellido: Aparece cartel de Campo Requerido dejando el campo vacío
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           |                  |
            | NroDocumento     | NroDocumento     |
        Then Verifico que el campo "ErrorNombreApellido" contenga el texto "Campo requerido"

    Scenario: TC_CHECKOUT_144_Validar propiedades de campo Vencimiento: Aparece cartel de Revisar Dato ingresando fecha inválida
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito         |
            | Codigo           | Codigo                   |
            | FechaVencimiento | FechaVencimientoInvalida |
            | Nombre           | Nombre                   |
            | NroDocumento     | NroDocumento             |
        Then Verifico que el campo "ErrorFecha" contenga el texto "Invalid format."

    Scenario: TC_CHECKOUT_144_Validar propiedades de campo Vencimiento: Aparece cartel de Campo Requerido dejando el campo vacío
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | Codigo           |
            | FechaVencimiento |                  |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        Then Verifico que el campo "ErrorFecha" contenga el texto "Campo requerido"

    Scenario: TC_CHECKOUT_145_Validar propiedades de campo Código de seguridad: Aparece cartel de Revisar Dato ingresando Codigo inválido
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | CodigoInvalido   |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        Then Verifico que el campo "ErrorCodigo" contenga el texto "Revisá este dato"

    Scenario: TC_CHECKOUT_145_Validar propiedades de campo Código de seguridad: Aparece cartel de Campo Requerido dejando el campo vacío
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           |                  |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     | NroDocumento     |
        Then Verifico que el campo "ErrorCodigo" contenga el texto "Campo requerido"

    Scenario: TC_CHECKOUT_146_Validar propiedades de campo Número de documento: Aparece cartel de advertencia de DNI del titular de la tarjeta ingresando documento inválido
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito     |
            | Codigo           | Codigo               |
            | FechaVencimiento | FechaVencimiento     |
            | Nombre           | Nombre               |
            | NroDocumento     | NroDocumentoInvalido |
        Then Verifico que el campo "ErrorNroDocumento" contenga el texto "DNI del titular de la tarjeta"

    Scenario: TC_CHECKOUT_146_Validar propiedades de campo Número de documento: Aparece cartel de Campo Requerido dejando el campo vacío
        And Hago click en "TarjetaDebito"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta       | NroTarjetaDebito |
            | Codigo           | Codigo           |
            | FechaVencimiento | FechaVencimiento |
            | Nombre           | Nombre           |
            | NroDocumento     |                  |
        Then Verifico que el campo "ErrorNroDocumento" contenga el texto "Campo requerido"