
const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { Driver } = require('selenium-webdriver/chrome');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
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
})