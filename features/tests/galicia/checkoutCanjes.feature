Feature: canjes

    Background: Pasos comunes
        Given Abro la pagina "galicia"
        And Leo los datos de "galicia"
        When Hago click en "Categorias"
        And Hago click en "Tecno"
        And Hago click en "Producto"


    Scenario: Realizar una compra con 25% puntos y tarjeta de credito
        Given Hago click en "25Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1222             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        And Hago click en "ContinuarYFinalizar"
        And Hago click en "AceptoTerminos"
        And Hago click en "CanjearYFinalizar"
        Then Verifico que el campo "CartelExitoEnvio" contenga el texto ""


    Scenario: Realizar una compra con 50% puntos y tarjeta de credito
        Given Hago click en "50Puntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1222             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        And Hago click en "ContinuarYFinalizar"
        And Hago click en "AceptoTerminos"
        And Hago click en "CanjearYFinalizar"
        Then Verifico que el campo "CartelExitoEnvio" contenga el texto ""

    Scenario: Realizar una compra solo con tarjeta de credito
        Given Hago click en "SoloCredito"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarATarjeta"
        And Lleno los siguientes campos
            | NroTarjeta     | 4507990000004905 |
            | NombreApellido | JUANA SUAREZ     |
            | Vencimiento    | 1222             |
            | CodSeguridad   | 123              |
            | NroDocumento   | 39169244         |
        And Hago click en "ChekCuota"
        And Hago click en "Cuota1"
        And Hago click en "ContinuarYFinalizar"
        And Hago click en "AceptoTerminos"
        And Hago click en "CanjearYFinalizar"
        Then Verifico que el campo "CartelExitoEnvio" contenga el texto ""


    Scenario: Realizar una compra solo con puntos
        Given Hago click en "SoloPuntos"
        And Hago click en "Canjear"
        And Hago click en "Continuar"
        And Hago click en "ContinuarAlPago"
        And Hago click en "AgregarTarjeta"
        And Hago click en "ContinuarYFinalizar"
        And Hago click en "AceptoTerminos"
        And Hago click en "CanjearYFinalizar"
        Then Verifico que el campo "CartelExitoEnvio" contenga el texto ""


# Scenario: Verificar que la suma del producto mas el costo de envio sea igual al valor total a pagar
#   Given Hago click en "SoloCredito"
#  And Hago click en "Canjear"
# And Hago click en "Continuar"
#Then Verifico que la suma del producto mas el costo de envio es igual al valor total a pagar

#Scenario: Verificar que al comprar un producto cn 25% puntos en el valor total a pagar figure solo el costo de envio y el precio restante
#   Given Hago click en "25Puntos"
#  And Hago click en "Canjear"
# And Hago click en "Continuar"

#Scenario: Verificar que al comprar un producto cn 50% puntos en el valor total a pagar figure solo el costo de envio y el precio restante
#   Given Hago click en "50Puntos"
#  And Hago click en "Canjear"
# And Hago click en "Continuar"

#Scenario: Verificar que al comprar un producto solo con puntos en el valor total a pagar fiure solo el costo de envio
#   Given Hago click en "SoloPuntos"
#  And Hago click en "Canjear"
# And Hago click en "Continuar"