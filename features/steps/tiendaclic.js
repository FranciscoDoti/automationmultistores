const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { By, until } = require('selenium-webdriver');

When('Navego al producto qa automation', async function(){

    await this.driver.get('https://tiendaclic-uat.aper.cloud/tecnologia/47457-automation-product-123123.html');
    await this.driver.sleep(5000);
});

When('valido las propiedades de campo email', async function(){
    var element = await this.driver.wait(until.elementLocated(By.xpath("//input[@id='email']")), 7000);
    var atributo = await element.getAttribute('type');
    await assert(atributo == 'email', 'Se busco que el atributo del input sea email pero se encontro: '+atributo);
});

When('valido las propiedades de campo clave', async function(){
    var element = await this.driver.wait(until.elementLocated(By.xpath("//input[@id='passwd']")), 7000);
    var atributo = await element.getAttribute('type');
    await assert(atributo == 'password', 'Se busco que el atributo del input sea password pero se encontro: '+atributo);
});