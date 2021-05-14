const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento, clickElementWithExecutor,
    llenarCampoConExecutor } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { By, Key, until } = require('selenium-webdriver');
const { Driver } = require('selenium-webdriver/chrome');

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