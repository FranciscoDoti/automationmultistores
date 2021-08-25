const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { Driver } = require('selenium-webdriver/chrome');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
const { By, Key, until, WebElement } = require('selenium-webdriver');
require(`${process.cwd()}/features/support/functions.js`);

When(/^Hago click en un producto con precio mayor a "(.*)"$/, async function (precio) {

    var encontreUnProductoMayorA10000 = false;
    var vectorDePreciosDeProductos = this.driver.findElements(By.xpath(''));
    var i = 0;
    while ((encontreUnProductoMayorA10000 == false) && (i > vectorDePreciosDeProductos.length)) {
        var textoDelPrecio = await vectorDePreciosDeProductos[i].getText();
        if (parseInt(textoDelPrecio) > 10000) {
            encontreUnProductoMayorA10000 = true;
        }
        i++;
    }
    await vectorDePreciosDeProductos[i - 1].click();
});

Then(/^Verifico que el monto en el elemento "(.*)" es la suma de los montos en los elementos "(.*)" y "(.*)"$/, async function (resultado, monto1, monto2) {

    //Conversion en int del elemento obtenido
    var textoElemento = await obtenerTexto(this.page, resultado);
    var resultadoTxtObtenido = textoElemento.replace(/\./g, '').replace(/\$/g, '');
    let a = resultadoTxtObtenido.replace(/\,/g, '.');
    var resultadoObtenido = parseFloat(a);

    //Conversion en int del elemento obtenido
    var textoElemento = await obtenerTexto(this.page, monto1);
    var resultadoTxtObtenido = textoElemento.replace(/\./g, '').replace(/\$/g, '');
    let b = resultadoTxtObtenido.replace(/\,/g, '.');
    var numeroObtenido1 = parseFloat(b);
    log.info(`Numero Obtenido de elemento:`+ monto1 + ': ' + numeroObtenido1);

    //Conversion en int del elemento obtenido
    var textoElemento = await obtenerTexto(this.page, monto2);
    var resultadoTxtObtenido = textoElemento.replace(/\./g, '').replace(/\$/g, '');
    let c = resultadoTxtObtenido.replace(/\,/g, '.');
    var numeroObtenido2 = parseFloat(c);
    log.info(`Numero Obtenido de elemento:`+ monto2 + ': ' + numeroObtenido2);

    //Operacion aritmetica
    var resultadoEsperado = numeroObtenido1+numeroObtenido2;
    
    await assert(resultadoObtenido == resultadoEsperado, `Resultado esperado: ${resultadoEsperado},Texto del elemento: ${resultado}`);
    log.info(`Se validó correctamente el resultado de la suma de los elementos `+ monto1 + 'y' + monto2);
});

When(/^Verifico que la cantidad de "(.*)" sea igual a la cantidad de "(.*)"$/, async function (elementKey,elementKey2) { 
    var cantidadElementos1 = this.driver.findElements(By.xpath(this.page[elementKey].valor));
    var cantidadElementos2 = this.driver.findElements(By.xpath(this.page[elementKey2].valor));
    log.info('Validando cantidad de elementos de '+ elementKey + ' y ' + elementKey2);
    await assert(cantidadElementos1.length == cantidadElementos2.length, 'Las cantidades de elementos no coinciden. '+ elementKey +':'+cantidadElementos1+ ', ' + elementKey2 + ':'+cantidadElementos2);
    log.info('Cantidad de elementos de '+ elementKey + ' y ' + elementKey2 + ' coincide');
});