const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { By, until } = require('selenium-webdriver');

When('Navego al producto qa automation', async function () {

    await this.driver.get('https://tiendaclic-uat.aper.cloud/tecnologia/47457-automation-product-123123.html');
    await this.driver.sleep(5000);
});

When('Navego al carrito', async function () {
    await this.driver.sleep(5000);
    await this.driver.get('https://tiendaclic-uat.aper.cloud/pedido');
})

When('valido las propiedades de campo email', async function () {
    var element = await this.driver.wait(until.elementLocated(By.xpath("//input[@id='email']")), 7000);
    var atributo = await element.getAttribute('type');
    await assert(atributo == 'email', 'Se busco que el atributo del input sea email pero se encontro: ' + atributo);
});

When('valido las propiedades de campo clave', async function () {
    var element = await this.driver.wait(until.elementLocated(By.xpath("//input[@id='passwd']")), 7000);
    var atributo = await element.getAttribute('type');
    await assert(atributo == 'password', 'Se busco que el atributo del input sea password pero se encontro: ' + atributo);
});

Then('Verifico que el valor de {string} se haya multiplicado', async function (nombreVariable) {
    var textoEnVariable = await this.data.get(nombreVariable);
    let a = textoEnVariable.replace(/\$ /g, '');
    let b = a.replace(/\,/g, '.');
    let initialValue = parseInt(b);
    let result = initialValue * 2;
    await this.driver.sleep(5000);
    const verification = await this.driver.wait(until.elementLocated(By.xpath("//span[@id='total_price']")), 7000);
    const textVarification = await verification.getText();
    let c = textVarification.replace(/\$/g, '');
    let d = c.replace(/\,/g, '.');
    let validacion = parseInt(d);
    await assert(result == validacion, `El valor inicial de compra era ${textoEnVariable}, y al agregar otro se esperaba que fuera ${result}, pero se encontro ${validacion}`);
});

Then('Verifico que el valor de {string} se haya triplicado', async function (nombreVariable) {
    var textoEnVariable = await this.data.get(nombreVariable);
    let a = textoEnVariable.replace(/\$ /g, '');
    let b = a.replace(/\,/g, '.');
    let initialValue = parseInt(b);
    let result = initialValue * 3;
    await this.driver.sleep(5000);
    const verification = await this.driver.wait(until.elementLocated(By.xpath("//span[@id='total_price']")), 7000);
    await this.driver.sleep(500);
    const textVarification = await verification.getText();
    let c = textVarification.replace(/\$/g, '');
    let d = c.replace(/\,/g, '.');
    let validacion = parseInt(d);
    await assert(result == validacion, `El valor inicial de compra era ${textoEnVariable}, y al agregar otros dos se esperaba que fuera ${result}, pero se encontro ${validacion}`);
});

Then('Verifico que el valor de {string} se haya dividido', async function (amount) {
    var textoEnVariable = await this.data.get(amount);
    let a = textoEnVariable.replace(/\$ /g, '');
    let b = a.replace(/\,/g, '.');
    let initialValue = parseInt(b);
    let result = (initialValue / 2).toString();
    await this.driver.sleep(5000);
    const verification = await this.driver.wait(until.elementLocated(By.xpath("//span[@id='total_price']")), 7000);
    await this.driver.sleep(500);
    const textVarification = await verification.getText();
    let c = textVarification.replace(/\$ /g, '');
    let d = c.replace(/\,/g, '.');
    let validacion = parseInt(d);
    await assert(result == validacion, `El valor inicial de compra era ${textoEnVariable}, y al restar uno se esperaba que fuera ${result}, pero se encontro ${validacion}`);

});