Feature: CHECKOUT_VALIDACIONES

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "Producto"

    Scenario: TC_CHECKOUT_142 Validar propiedades de campo Número de tarjeta: Boton continuar deshabilitado ingresando menos de 16 números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | SeisNumeros           |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_142 Validar propiedades de campo Número de tarjeta: Boton continuar deshabilitado dejando el campo vacio
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     |                       |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |

        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_142 Validar propiedades de campo Número de tarjeta: Boton continuar deshabilitado ingresando caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | CaracteresEspeciales  |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario:TC_CHECKOUT_143  Validar propiedades de campo Nombre y apellidos: Boton continuar deshabilitado ingresando números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | SeisNumeros           |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |

        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario:TC_CHECKOUT_143  Validar propiedades de campo Nombre y apellidos: Boton continuar deshabilitado ingresando caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | CaracteresEspeciales  |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_143 Validar propiedades de campo Nombre y apellidos: Boton continuar deshabilitado dejando el campo vacío
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido |                       |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_144 Validar propiedades de campo Vencimiento: Boton continuar deshabilitado ingresando menos de 4 números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | DosNumeros            |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_144 Validar propiedades de campo Vencimiento: Boton continuar deshabilitado ingresando letras
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | CuatroLetras          |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_144 Validar propiedades de campo Vencimiento: Boton continuar deshabilitado ingresando caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | CaracteresEspeciales  |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | NroDocumentoValido    |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_145 Validar propiedades de campo Código de seguridad: Boton continuar deshabilitado ingresando letras
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido    |
            | NombreApellido | NombreTarjetaValido |
            | Vencimiento    | VencimientoValido   |
            | CodSeguridad   | CuatroLetras        |
            | NroDocumento   | NroDocumentoValido  |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_145 Validar propiedades de campo Código de seguridad: Boton continuar deshabilitado ingresando menos de 3 números
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido    |
            | NombreApellido | NombreTarjetaValido |
            | Vencimiento    | VencimientoValido   |
            | CodSeguridad   | DosNumeros          |
            | NroDocumento   | NroDocumentoValido  |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_145 Validar propiedades de campo Código de seguridad: Boton continuar deshabilitado ingresando caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido     |
            | NombreApellido | NombreTarjetaValido  |
            | Vencimiento    | VencimientoValido    |
            | CodSeguridad   | CaracteresEspeciales |
            | NroDocumento   | NroDocumentoValido   |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_145 Validar propiedades de campo Código de seguridad: Boton continuar deshabilitado dejando el campo vacio
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido    |
            | NombreApellido | NombreTarjetaValido |
            | Vencimiento    | VencimientoValido   |
            | CodSeguridad   |                     |
            | NroDocumento   | NroDocumentoValido  |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_146 Validar propiedades de campo Número de documento: Boton continuar deshabilitado ingresando letras
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | CuatroLetras          |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_146 Validar propiedades de campo Número de documento: Boton continuar deshabilitado ingresando caracteres especiales
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | CaracteresEspeciales  |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado

    Scenario: TC_CHECKOUT_146 Validar propiedades de campo Número de documento: Boton continuar deshabilitado dejando el campo vacio
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   |                       |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado


    Scenario: TC_CHECKOUT_146 Validar propiedades de campo Número de documento: Boton continuar deshabilitado ingresando menos de 7 digitos
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos leyendo la config
            | NroTarjeta     | NroTarjetaValido      |
            | NombreApellido | NombreTarjetaValido   |
            | Vencimiento    | VencimientoValido     |
            | CodSeguridad   | CodigoSeguridadValido |
            | NroDocumento   | SeisNumeros           |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        Then Verifico que el elemento "ContinuarYFinalizar" este deshabilitado