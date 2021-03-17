const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);

Given(/^Abro la pagina "(.*)"$/, async function (web) {

    try {
        await this.driver.get(urls[this.env[web]][web]);
        await log.info('Ejecutando la prueba en el ambiente: ' + this.env[web]);
        await log.info('abriendo la pagina: ' + urls[this.env[web]][web]);

    } catch (error) {
        if (error.message.includes("ERR_CONNECTION_TIMED_OUT")) {
            await log.error("Error de timeout al intentar abrir la página");

        } else {
            await log.error('No se pudo abrir la página. Revisar los archivos urls y config');
        }
        await log.error(error);
        await process.exit();
    }

});

Given(/^Leo los datos de "(.*)"$/, async function (json) {
    this.page = require(`${process.cwd()}/features/pages/${json}.json`);
});

When(/^Hago click en "(.*)"$/, async function (elementKey) {
    await clickElement(this.page, elementKey);
});

When(/^Lleno el campo "(.*)" con "(.*)"$/, async function (elementKey, texto) {
    await llenarCampo(this.page, elementKey, texto);
});

When('Lleno los siguientes campos', async function (datatable) {

    for (var i = 0; i < datatable.rawTable.length; i++) {
        if (datatable.rawTable[i][1] != 'RANDOM') {
            await llenarCampo(this.page, datatable.rawTable[i][0], datatable.rawTable[i][1]);
        } else {
            var random = Math.random().toString().slice(2, 4);
            await llenarCampo(this.page, datatable.rawTable[i][0], random);
        }
    }


});

When(/^Obtengo el texto del elemento "(.)" y lo guardo en la variable "(.)"$/
    , async function (elementKey, nombreVariable) {
        var textoExtraido = await obtenerTexto(this.page, elementKey);
        await this.data.set(nombreVariable, textoExtraido);

        var textoEnVariable = await this.data.get(nombreVariable);
        await log.info(' se guardó el texto ' + textoEnVariable + ' en la variable ' + nombreVariable);
    });


Then(/^Verifico que el elemento "(.)" contiene el texto alojado en la variable "(.)"$/, async function (elementKey, nombreVariable) {
    var textoElemento = await obtenerTexto(this.page, elementKey);
    var textoEnVariable = await this.data.get(nombreVariable);
    await assert(textoElemento == textoEnVariable, `Texto del elemento: ${textoElemento}
      .Texto guardado en variable: ${textoEnVariable}`);

});

Then(/^Verifico que el elemento "(.*)" no exista$/, async function (elementKey) {
    var respuesta = await buscarElemento(this.page, elementKey);
    await assert(respuesta == 'ELEMENT_NOT_FOUND', `respuesta = ${respuesta}`);

});

Then(/^Verifico que el campo "(.*)" contenga el texto "(.*)"$/, async function (elementKey, texto) {
    await assertText(this.page, elementKey, texto);

});

Then(/^Verifico que el elemento "(.*)" este deshabilitado$/, async function (elementKey) {
    var webElement = await buscarElemento(this.page, elementKey);
    var estaHabilitado = await webElement.isEnabled();
    await assert.isFalse(estaHabilitado);

});