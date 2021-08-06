@CHECKOUT_VALIDACIONES
Feature: CHECKOUT_VALIDACIONES

    Background: Pasos comunes
        Given Abro la pagina "invex"
        And Leo los datos de "invex"
        When Paso el mouse por encima de "IniciarSesion"
        And Hago click en "IniciarSesion"
        Then Verifico que el campo "HeaderPage" contenga el texto "INICIA SESIÓN CON TU CUENTA"
        When Lleno el campo "Email" con "usuarioValido" yendo a buscar la config
        When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
        And Hago click en "Login"
        Then Verifico que el campo "UsuarioLogueado" contenga el texto "Nombre" yendo a buscar la config
        When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
        And Hago click en "AñadirAlCarrito"
        And Hago click en "ContinuarCompra"
        And Hago click en "ConfirmarDireccion"
        And Hago click en "ConfirmarMetodoEnvio"
        And Hago click en "MetodoPagoConekta"

    Scenario: TC_CHECKOUT_142_Validar propiedades de campo Número de tarjeta: Aparece cartel de Revisar Dato ingresando tarjeta de crédito incorrecta
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaIncorrecta" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "La tarjeta ingresada es invalida"

    Scenario: TC_CHECKOUT_142_Validar propiedades de campo Número de tarjeta: Aparece cartel de Campo Requerido dejando el campo vacío
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "Informacion incompleta"

    Scenario: TC_CHECKOUT_143_Validar propiedades de campo Nombre y apellido: Aparece cartel de Maximo caracteres permitidos al exceder el límite
        Then Valido propiedades del campo "NombreTarjetahabiente"

    Scenario: TC_CHECKOUT_143_Validar propiedades de campo Nombre y apellido: Aparece cartel de Campo Requerido dejando el campo vacío
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "Codigo" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "Informacion incompleta"

    Scenario: TC_CHECKOUT_145_Validar propiedades de campo Código de seguridad: Validar longitud maxima permitida
        Then Valido propiedades del campo "Codigo"

    Scenario: TC_CHECKOUT_145_Validar propiedades de campo Código de seguridad: CVC inválido
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        Given Lleno el campo CVC con "CvcInvalido" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "El campo CVC es invalido"

    Scenario: TC_CHECKOUT_145_Validar propiedades de campo Código de seguridad: Aparece cartel de Campo Requerido dejando el campo vacío
        And Lleno los siguientes campos leyendo la config
            | NombreTarjetahabiente | NombreTarjetahabiente |
        Given Lleno el campo Numero de Tarjeta con "NroTarjetaCredito" yendo a buscar la config
        When Lleno el campo "ListaMesVencimiento" con "MesVencimiento" yendo a buscar la config
        When Lleno el campo "ListaAñoVencimiento" con "AñoVencimiento" yendo a buscar la config
        #Given Espera
        And Hago click en "TyC"
        And Hago click en "ConfirmarPedido"
        Then Verifico que el campo "CartelAlertaMedioPago" contenga el texto "Informacion incompleta"
