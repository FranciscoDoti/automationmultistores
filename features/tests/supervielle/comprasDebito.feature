@supervielle
Feature: comprasDredito

    Scenario: Realizar una compra con tarjeta de debito
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4066520617031158 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 0822             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "PagarDebito"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra de un producto de Fravega con tarjeta de debito
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Buscar" con "Aire Acondicionado Split Frio Calor Philco Phs25h13x 25kfc Re Copado"
        And Hago click en "Lupita"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "IngresarNuevaTarjeta"
        And Hago click en "Continuar"
        And Lleno los siguientes campos
            | NroTarjeta     | 4066520617031158 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 0822             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "PagarDebito"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario:Realizar una compra de un producto de Fravega con tarjeta de debito TOKENIZADA
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Lleno el campo "Buscar" con "Aire Acondicionado Split Frio Calor Philco Phs25h13x 25kfc Re Copado"
        And Hago click en "Lupita"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaDebitoTokenizada"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"

    Scenario: Realizar una compra con tarjeta de debito TOKENIZADA
        Given Abro la pagina "supervielle"
        And Leo los datos de "supervielle"
        And Hago click en "IniciaSesion"
        And Lleno el campo "Usuario" con "lqaautomation2021@gmail.com"
        And Lleno el campo "Contraseña" con "prueba01"
        And Hago click en "IniciarSesion"
        And Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "ProductoTecno"
        And Hago click en "AgregarAlCarrito"
        And Hago click en "AceptoCondiciones"
        And Hago click en "Comprar"
        And Hago click en "FinalizarCompra"
        And Hago click en "TarjetaDebitoTokenizada"
        And Hago click en "Continuar"
        And Lleno el campo "CodSeguridadTokenizado" con "123"
        And Hago click en "PagarTokenizado"
        Then Verifico que el campo "EstadoDeCompraExitosa" contenga el texto "¡Listo!"