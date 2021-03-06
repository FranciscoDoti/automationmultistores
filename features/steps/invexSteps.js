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
            'Error. El campo' + nombreCampo + ' deber??a tener un maximo de 4 caracteres. Se encontraron: ' + textoElementoCvc.length);
    }
    else if (nombreCampo == 'NombreTarjetahabiente') {

        var webElement = await buscarElemento(this.page, nombreCampo);
        var textoWebElement = await webElement.getAttribute('maxlength');
        await assert.isTrue(textoWebElement == 25,
            'Error. El campo ' + nombreCampo + ' deber??a tener un maximo de 25 caracteres. Se encontraron: ' + textoWebElement.length);
    }
    else if (nombreCampo == 'Contrase??a') {
        //Se valida type del elemento
        var webElement = await buscarElemento(this.page, nombreCampo);
        var textoWebElement = await webElement.getAttribute('type');
        await assert.isTrue(textoWebElement == 'password',
            'Error. El campo ' + nombreCampo + ' deber??a ser de tipo password. Sin embargo es: ' + textoWebElement);
        //Se presiona btn de ocultar password y se valida elemento nuevamente
        var btnOcultarPassword = await buscarElemento(this.page, 'OcultarContrase??a');
        await btnOcultarPassword.click();
        await this.driver.sleep(5000)
        var textoWebElement = await webElement.getAttribute('type');
        await assert.isTrue(textoWebElement == 'text',
            'Error. El campo ' + nombreCampo + ' deber??a ser de tipo text. Sin embargo es: ' + textoWebElement);
    } else {
        await assert.fail('No est?? contemplado validar las propiedades del elemento: ' + nombreCampo);
    }

});

When('Navego al producto de automation invex', async function () {
    await this.driver.get('https://invex-dev.aper.cloud/inicio/7561-automation-product-123123.html');
});

When('Navego al producto de automation invex proveedor dos', async function () {
    await this.driver.get('https://invex-dev.aper.cloud/inicio/7594-automation-product-123124.html');
})

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

When('Verifico que el campo de carrito invex este vacio', async function () {
    await this.driver.sleep(1500);
    var carrito = await this.driver.wait(until.elementLocated(By.xpath("//span[contains(@class, 'cart-products-count')]")), 10000);
    try {
        var text = await carrito.getText();
    } catch {

    }
    if (text == '') {
    } else {
        await assert.isFalse(`Se encontro que el carrito tenia el valor ${text}`);
    }
});

Then('Verifico que el total del precio de {string} invex se haya multiplicado por {int}', async function (nombreVariable, num) {
    var textoEnVariable = await this.data.get(nombreVariable);
    let a = textoEnVariable.replace(/\$ /g, '');
    let b = a.replace(/\,/g, '.');
    let initialValue = parseFloat(b);
    let result = (initialValue * num).toString();
    await this.driver.sleep(5000);

    const verification = await this.driver.wait(until.elementLocated(By.xpath("//span[preceding-sibling::span[text()='Total']]")), 7000);
    const textVarification = await verification.getText();
    let c = textVarification.replace(/\$/g, '');
    let d = c.replace(/\,/g, '.');
    let validacion = parseInt(d).toString();
    await assert(result.includes(validacion), `El valor inicial de compra era ${textoEnVariable}, y al agregar otro se esperaba que fuera ${result}, pero se encontro ${validacion}`);

})

When('Ingreso a la categoria de tecnologia de invex', async function () {
    await this.driver.get(urls[this.envir]['invex'] + '3-tecnologia');
    await this.driver.sleep(5000);
})

When('Ingreso a la subcategoria de smartphones de invex', async function () {
    await this.driver.get(urls[this.envir]['invex'] + '265-smartphones');
    await this.driver.sleep(5000);
})