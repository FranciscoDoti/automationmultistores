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

Given('Retroceder en la página', async function () {
    await this.driver.navigate().back();
    console.log('Se presiona botón de retroceder en el navegador.');
})

Then(/^Valido propiedades del campo "(.*)"$/, async function (nombreCampo) {
    if (nombreCampo == 'Codigo') {

        await this.driver.switchTo().frame(1);
        await this.driver.sleep(5000)
        var elementoCvc = await buscarElemento(this.page, nombreCampo);
        var textoElementoCvc = await elementoCvc.getAttribute('maxlength');
        await assert.isTrue(textoElementoCvc == 4,
            'Error. El campo' + nombreCampo + ' debería tener un maximo de 4 caracteres. Se encontraron: ' + textoElementoCvc.length);
    }
    else if (nombreCampo == 'NombreTarjetahabiente') {

        var webElement = await buscarElemento(this.page, nombreCampo);
        var textoWebElement = await webElement.getAttribute('maxlength');
        await assert.isTrue(textoWebElement == 25,
            'Error. El campo ' + nombreCampo + ' debería tener un maximo de 25 caracteres. Se encontraron: ' + textoWebElement.length);
    }
    else if (nombreCampo == 'Contraseña') {
        //Se valida type del elemento
        var webElement = await buscarElemento(this.page, nombreCampo);
        var textoWebElement = await webElement.getAttribute('type');
        await assert.isTrue(textoWebElement == 'password',
            'Error. El campo ' + nombreCampo + ' debería ser de tipo password. Sin embargo es: ' + textoWebElement);
        //Se presiona btn de ocultar password y se valida elemento nuevamente
        var btnOcultarPassword = await buscarElemento(this.page, 'OcultarContraseña');
        await btnOcultarPassword.click();
        await this.driver.sleep(5000)
        var textoWebElement = await webElement.getAttribute('type');
        await assert.isTrue(textoWebElement == 'text',
            'Error. El campo ' + nombreCampo + ' debería ser de tipo text. Sin embargo es: ' + textoWebElement);
    } else {
        await assert.fail('No está contemplado validar las propiedades del elemento: ' + nombreCampo);
    }

});

When('Navego al producto de automation invex', async function () {
    await this.driver.get('https://invex-dev.aper.cloud/inicio/7561-automation-product-123123.html');
});

When('Clickeo en sumar cantidad', async function () {
    await this.driver.sleep(15000);
    try {
        var element = await this.driver.wait(until.elementLocated(By.xpath("//span[child::button[contains(@class,'up')]]")), 30000);
    } catch {
        throw error(`element was not found`);
    }
    await this.driver.sleep(5000);
    await element.click();

});

When('Clickeo en restar cantidad', async function () {
    await this.driver.sleep(10000);
    try {
        var element = await this.driver.wait(until.elementLocated(By.xpath("//span[child::button[contains(@class,'down')]]")), 10000);
    } catch {
        throw error(`element was not found`);
    }
    await this.driver.sleep(1000);
    await element.click();
})

