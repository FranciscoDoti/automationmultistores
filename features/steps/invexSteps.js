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


Given('Espera', async function () {
    await this.driver.sleep(5000)

})

Then(/^Validar usuario logueado "(.*)"$/, async function (elementKey) {

    var webElement = await buscarElemento(this.page, elementKey);
    if (webElement != 'ELEMENT_NOT_FOUND') {
        await this.driver.actions({ bridge: true }).move({ x: 0, y: 0, origin: webElement }).perform();
        await this.driver.sleep(5000);
    } else {
        await assert.fail('no se pudo localizar el elemento ' + elementKey);
    }
});

Given(/^Lleno el campo Numero de Tarjeta con "(.*)" yendo a buscar la config$/, async function (datoJson) {

    await this.driver.switchTo().frame(0);
    await this.driver.sleep(5000)
    var textoQueVamosAMandar = this.config[datoJson];
    await llenarCampo(this.page, 'NroTarjeta', textoQueVamosAMandar);
    await this.driver.sleep(5000);
    await this.driver.switchTo().defaultContent();

})

Given(/^Lleno el campo CVC con "(.*)" yendo a buscar la config$/, async function (datoJson) {

    await this.driver.switchTo().frame(1);
    await this.driver.sleep(5000)
    var textoQueVamosAMandar = this.config[datoJson];
    await llenarCampo(this.page, 'Codigo', textoQueVamosAMandar);
    await this.driver.sleep(5000);
    await this.driver.switchTo().defaultContent();

})

Then(/^Valido propiedades del campo "(.*)"$/, async function (nombreCampo) {
    if (nombreCampo == 'Codigo') {
        await this.driver.switchTo().frame(1);
        await this.driver.sleep(5000)
        var elementoCvc = await buscarElemento(this.page, nombreCampo);
        var textoElementoCvc = await elementoCvc.getAttribute('maxlength');
        await assert.isTrue(textoElementoCvc == 4,
            'Error. El campo CVC debería tener un maximo de 4 caracteres. Se encontraron: ' + textoElementoCvc.length);
    } else if (nombreCampo == 'NombreTarjetahabiente') {
        var webElement = await buscarElemento(this.page, nombreCampo);
        var textoWebElement = await webElement.getAttribute('maxlength');
        await assert.isTrue(textoWebElement == 25,
            'Error. El campo NombreTarjetahabiente debería tener un maximo de 25 caracteres. Se encontraron: ' + textoWebElement.length);
    } else {
        await assert.fail('No está contemplada la longitud del elemento: ' + nombreCampo);
    }

})

