const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { Actions, WebDriver, Key } = require('selenium-webdriver');

When(/^Hago foco en el frame "(.*)"$/, async function (elementKey) {
    var frame = await buscarElemento(this.page, elementKey);
    await this.driver.switchTo().frame;
    //await clickElement(this.page, elementKey);
});

When("bice captcha sleep", async function() {
    await this.driver.sleep(5000);
});

When(/^Se envia tecla TAB al input "(.*)"$/, async function (elementKey) {
    webElement = await buscarElemento(this.page, elementKey);
    webElement.sendKeys(Key.TAB)
});

When(/^Verifico que exista el elemento "(.*)"$/, async function (elementKey) {
    webElement = await buscarElemento(this.page, elementKey);
});

Then(/^Verifico que el campo "(.*)" contenga el texto "(.*)" de la config$/, async function (elementKey, datoJson) {
    await assertText(this.page, elementKey,  this.config[datoJson]);

});

When(/^Se compara el valor del atributo "(.*)" de el elemento "(.*)" con el valor "(.*)"$/, async function (atributo, elementKey, valor) {
    webElement = await buscarElemento(this.page, elementKey);
    valorAtributo = await webElement.getAttribute(atributo);
    if(valorAtributo===valor){
        await log.info('El valor del atributo' + atributo + ' del elemento ' + elementKey +' coincide con el valor ' + valor);
    }else{
        await assert.fail('El valor del atributo' + atributo + ' del elemento ' + elementKey +' no coincide con el valor ' + valor);
    }
    
});