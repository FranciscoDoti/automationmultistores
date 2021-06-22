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

Given('Aceptar alerta desea pagar con puntos', async function () {
    // Store the alert in a variable
    let alert = await this.driver.switchTo().alert();
    //Press the OK button
    await alert.accept();
    await this.driver.sleep(2000);
    
})


When(/^Validar que el "(.*)" no tenga productos agregados$/, async function (elementCarrito) {

    log.info('Se valida productos del carrito.');
    var tareasCarrito = await obtenerTexto(this.page, elementCarrito);

    if (tareasCarrito != 0) {
        log.info('El carrito posee ' + tareasCarrito + ' productos, se procede a eliminarlos.');

        for (let i = 0; i < tareasCarrito; i++) {
            var carritosTarea = await obtenerTexto(this.page, elementCarrito);

            if (carritosTarea != 0) {
                //Se elimina productos del carrito
                var element = await buscarElemento(this.page, elementCarrito);
                await element.click();
                await this.driver.sleep(2000);
                var eliminarProductoXpath = await buscarElemento(this.page, 'EliminarProductoCarrito');
                await eliminarProductoXpath.click();
                await this.driver.sleep(6000);
                console.log("Se eliminó producto del carrito.");
                //Se valida cantidad de productos del carrito
                var tareasCarrito2 = await obtenerTexto(this.page, elementCarrito);
                console.log("El carrito tiene " + tareasCarrito2 + " productos.");

            } else {
                log.info('Se validó que el carrito no posee productos.');
            }
        }
    } else {
        log.info('Se validó que el carrito posee ' + tareasCarrito + ' productos.');
    }
});