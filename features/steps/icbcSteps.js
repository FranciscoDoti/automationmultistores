const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento, clickElementWithExecutor,
    llenarCampoConExecutor } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { By, Key, until } = require('selenium-webdriver');
const { Driver } = require('selenium-webdriver/chrome');
const { Actions } = require('selenium-webdriver');

Given('Me muevo a la ventana de Login', async function () {
    var pestañas = await this.driver.getAllWindowHandles();
    console.log(pestañas)
    await this.driver.sleep(5000)
    await this.driver.switchTo().window(pestañas[1]);
    await this.driver.sleep(5000)
})

Given('Me muevo a la pagina principal', async function () {
    var pestañas = await this.driver.getAllWindowHandles();
    console.log(pestañas)
    await this.driver.sleep(5000)
    await this.driver.switchTo().window(pestañas[0]);
    await this.driver.sleep(5000)
})

Given('Aceptar alerta desea pagar con puntos', async function () {
    // Store the alert in a variable
    let alert = await this.driver.switchTo().alert();
    //Press the OK button
    await alert.accept();
    await this.driver.sleep(2000);

})

When(/^Validar que el "(.*)" no tenga productos agregados$/, async function (elementCarrito) {

    log.info('Se valida productos del carrito.');
    var tareasCarrito = await obtenerTexto(this.page, elementCarrito);

    if (tareasCarrito != 0) {
        log.info('El carrito posee ' + tareasCarrito + ' productos, se procede a eliminarlos.');

        for (let i = 0; i < tareasCarrito; i++) {
            var carritosTarea = await obtenerTexto(this.page, elementCarrito);

            if (carritosTarea != 0) {
                //Se elimina productos del carrito
                var element = await buscarElemento(this.page, elementCarrito);
                await element.click();
                await this.driver.sleep(2000);
                var eliminarProductoXpath = await buscarElemento(this.page, 'EliminarProductoCarritoDesplegado');
                await eliminarProductoXpath.click();
                await this.driver.sleep(6000);
                console.log("Se eliminó producto del carrito.");
                //Se valida cantidad de productos del carrito
                var tareasCarrito2 = await obtenerTexto(this.page, elementCarrito);
                console.log("El carrito tiene " + tareasCarrito2 + " productos.");

            } else {
                log.info('Se validó que el carrito no posee productos.');
            }
        }
    } else {
        log.info('Se validó que el carrito posee ' + tareasCarrito + ' productos.');
    }
});

Then(/^Verificar y obtener elementos de lista "(.*)"$/, async function (element) {
    await this.driver.sleep(4000)
    let listaSugerida = [];

    try {
        await buscarElemento(this.page, element);
        // Obtiene los elementos de la lista
        let elements = await this.driver.findElements(By.xpath(this.page.ListaBusquedaSugerida.valor));
        log.info('se obtiene valores de ' + element + ' y se almacenan.');

        for (let e of elements) {
            var textoWebElement = await e.getText();
            listaSugerida.push(textoWebElement);
        }
        log.info('se despliega lista de búsqueda de productos sugeridos, se muestran: ' + listaSugerida.length + ' productos sugeridos.');
    } catch {
        await assert.fail('hubo un error al obtener y almacenar valores del elemento: ' + element);
    }
})

Then(/^Verifico que el elemento "(.*)" no esté presente$/, async function (elementKey) {
    var estaHabilitado = true;

    var webElement = await buscarElemento(this.page, elementKey);
    if (webElement == 'ELEMENT_NOT_FOUND') {
        log.info('No se visualiza elemento: ' + elementKey);
        estaHabilitado = false;
        await assert.isFalse(estaHabilitado);
    } else {
        await assert.fail('El elemento ' + elementKey + ' está presente, no debería estarlo.');
    }
});

When(/^Verificar que el elemento "(.*)" del carrito contenga el producto "(.*)" yendo a buscar la config$/, async function (elementKey, datoJson) {

    var textoAValidar = this.config[datoJson];
    let productos = [];

    const element = await this.driver.wait(until.elementsLocated(By.xpath(this.page[elementKey].valor)), 5000);
    log.info('Se ubican productos del Carrito.');

    for (let e of element) {
        var textoWebElement = await e.getAttribute('href');
        productos.push(textoWebElement);
    }
    log.info('Se obtiene: ' + productos.length + ' productos.');
    for (let i = 0; i <= productos.length; i++) {
        await assert(productos.includes(textoAValidar), `error`);

    }
    log.info('Se valida que se encuentre: ' + textoAValidar + ' en los productos del carrito.');

})

When('valido las propiedades de campo clave', async function () {
    var element = await this.driver.wait(until.elementLocated(By.xpath("//input[@id='passwd']")), 7000);
    var atributo = await element.getAttribute('type');
    await assert(atributo == 'password', 'Se busco que el atributo del input sea password pero se encontro: ' + atributo);
});

When(/^Obtengo el atributo "(.*)" del elemento "(.*)" y lo guardo en la variable "(.*)"$/, async function (atributo, elementKey, nombreVariable) {
    var webElement = await buscarElemento(this.page, elementKey);

    if (atributo == 'Imagen') {
        var atributoWebElement = await webElement.getAttribute('src');
    } else if (atributo == 'Titulo') {
        var atributoWebElement = await webElement.getAttribute('title');
    } else if (atributo == 'ALT') {
        var atributoWebElement = await webElement.getAttribute('alt');
    } else if (atributo == 'Valor') {
        var atributoWebElement = await webElement.getAttribute('value');
    }
    await this.data.set(nombreVariable, atributoWebElement);
    var textoEnVariable = await this.data.get(nombreVariable);
    await log.info(' se guardó el texto ' + textoEnVariable + ' en la variable ' + nombreVariable);
});

Then(/^Verifico que el elemento "(.*)" contiene el atributo "(.*)" alojado en la variable "(.*)"$/, async function (elementKey, atributo, nombreVariable) {

    var webElement = await buscarElemento(this.page, elementKey);
    if (atributo == 'Imagen') {
        var atributoWebElement = await webElement.getAttribute('src');
    } else if (atributo == 'Titulo') {
        var atributoWebElement = await webElement.getAttribute('title');
    } else if (atributo == 'ALT') {
        var atributoWebElement = await webElement.getAttribute('alt');
    } else if (atributo == 'Valor') {
        var atributoWebElement = await webElement.getAttribute('value');
    }
    var textoEnVariable = await this.data.get(nombreVariable);
    await assert(atributoWebElement == textoEnVariable, `Texto del elemento: ${atributoWebElement}
      .Texto guardado en variable: ${textoEnVariable}`);
});

Then(/^Verifico que el elemento "(.*)" incluya el texto alojado en la variable "(.*)"$/, async function (elementKey, nombreVariable) {
    var textoElemento = await obtenerTexto(this.page, elementKey);
    //Se convierte en minusculas
    var txtElementoLowerCase = await textoElemento.toLowerCase();

    //Se convierte en minusculas
    var textoEnVariable = await this.data.get(nombreVariable);
    var txtVariableLowerCase = await textoEnVariable.toLowerCase();

    await assert(txtElementoLowerCase.includes(txtVariableLowerCase), `Texto del elemento: ${textoElemento}
          .Texto guardado en variable: ${textoEnVariable}`);

});

Then(/^Verifico que la variable "(.*)" contenga el texto "(.*)"$/, async function (nombreVariable, texto) {

    var textoEnVariable = await this.data.get(nombreVariable);
    await assert(texto == textoEnVariable, `Texto esperado del elemento: ${texto}
      .Texto guardado en variable: ${textoEnVariable}`);
});

Then(/^Verifico que el elemento "(.*)" contenga cifra "(.*)" que la alojada en la variable "(.*)"$/, async function (elementKey, operacion, nombreVariable) {
    //Conversion en int de variable almacenada
    var textoEnVariable = await this.data.get(nombreVariable);
    var variableInt = textoEnVariable.replace(/\$/g, '');
    let a = variableInt.replace(/\./g, '');
    var variableAlmacenada = parseFloat(a);

    //Conversion en int del elemento obtenido
    var textoElemento = await obtenerTexto(this.page, elementKey);
    var resultadoTxtObtenido = textoElemento.replace(/\$/g, '');
    let b = resultadoTxtObtenido.replace(/\./g, '');
    var numeroObtenido = parseFloat(b);

    //Operacion aritmetica
    if (operacion == 'mayor') {

        await assert(numeroObtenido > variableAlmacenada, `Texto del elemento: ${numeroObtenido}
      .Texto guardado en variable: ${variableAlmacenada}`);
        log.info(`Se validó correctamente el resultado, número almacenado en variable es: ${variableAlmacenada} y el número obtenido es: ${numeroObtenido}`);

    } else if (operacion == 'menor') {

        await assert(numeroObtenido < variableAlmacenada, `Texto del elemento: ${numeroObtenido}
      .Texto guardado en variable: ${variableAlmacenada}`);
        log.info(`Se validó correctamente el resultado, número almacenado en variable es: ${variableAlmacenada} y el número obtenido es: ${numeroObtenido}`);
    }

});

Then(/^Verifico que el elemento "(.*)" contiene el número alojado en la variable "(.*)" "(.*)" por "(.*)"$/, async function (elementKey, nombreVariable, operacion, numero) {

    //Conversion en int de variable almacenada
    var textoEnVariable = await this.data.get(nombreVariable);
    var variableInt = textoEnVariable.replace(/\$/g, '');
    let a = variableInt.replace(/\,/g, '.');
    var variableAlmacenada = parseFloat(a);

    //Conversion en int del elemento obtenido
    var textoElemento = await obtenerTexto(this.page, elementKey);
    var resultadoTxtObtenido = textoElemento.replace(/\$/g, '');
    let b = resultadoTxtObtenido.replace(/\,/g, '.');
    var numeroObtenido = parseFloat(b);

    //Operacion aritmetica
    if (operacion == 'multiplicado') {
        var resultado = variableAlmacenada * numero;
    } else if (operacion == 'dividido') {
        var resultado = variableAlmacenada / numero;
    }
    await assert(resultado == numeroObtenido, `Texto del elemento: ${resultado}
      .Texto guardado en variable: ${variableAlmacenada}`);
    log.info(`Se validó correctamente el resultado, número almacenado en variable es: ${numeroObtenido} y el número obtenido es: ${resultado}`);
});

Then(/^Verifico que el elemento "(.*)" contiene la "(.*)" de las variables "(.*)" y "(.*)"$/, async function (elementKey, operacion, nombreVariableUno, nombreVariableDos) {

    //Conversion en int de primera variable almacenada
    var textoEnVariableUno = await this.data.get(nombreVariableUno);
    var variableIntUno = textoEnVariableUno.replace(/\$/g, '');
    let a = variableIntUno.replace(/\,/g, '.');
    var variableAlmacenadaUno = parseFloat(a);

    //Conversion en int de segunda variable almacenada
    var textoEnVariableDos = await this.data.get(nombreVariableDos);
    var variableIntDos = textoEnVariableDos.replace(/\$/g, '');
    let b = variableIntDos.replace(/\,/g, '.');
    var variableAlmacenadaDos = parseFloat(b);

    //Conversion en int del elemento obtenido
    var textoElemento = await obtenerTexto(this.page, elementKey);
    var resultadoTxtObtenido = textoElemento.replace(/\$/g, '');
    let c = resultadoTxtObtenido.replace(/\,/g, '.');
    var numeroObtenido = parseFloat(c);

    //Operacion aritmetica
    if (operacion == 'suma') {
        var resultado = variableAlmacenadaUno + variableAlmacenadaDos;
    } else if (operacion == 'resta') {
        var resultado = variableAlmacenadaUno - variableAlmacenadaDos;
    }
    await assert(resultado == numeroObtenido, `Texto del elemento: ${resultado}
      .Texto guardado en primera variable: ${variableAlmacenadaUno} y en segunda: ${variableAlmacenadaDos}`);
    log.info(`Se validó correctamente el resultado, número almacenado en variable es: ${numeroObtenido} y el número obtenido es: ${resultado}`);
});
