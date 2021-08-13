const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento, clickElementWithExecutor,
    llenarCampoConExecutor } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { By, Key, until } = require('selenium-webdriver');



When('Cargo la siguiente informacion de la tarjeta', async function (datatable) {
    var item = await datatable.hashes()[0];
    // console.log("El numero de tarjeta es " + item.Codigo);
    //  await this.driver.wait(until.elementLocated(By.xpath(carrito.NroTarjeta)));

    await this.driver.sleep(3000);
    var iFrames = await this.driver.findElements(By.tagName("iframe"));
    await this.driver.switchTo().frame(0);

    var vecTarjeta = await this.driver.findElements(By.xpath(this.page.NroTarjeta.valor));
    await this.driver.executeScript("arguments[0].value='" + item.NroTarjeta + "';", vecTarjeta[0])
    await this.driver.findElement(By.xpath(this.page.Vencimiento.valor)).sendKeys(item.FechaVencimiento);
    await this.driver.findElement(By.xpath(this.page.Codigo.valor)).sendKeys(item.Codigo);
    await this.driver.sleep(4000);

});

Then('Verifico que el valor de {string} sea el doble', async function (mn) {
    await this.driver.sleep(5000);
    const element = await this.driver.wait(until.elementLocated(By.xpath("//div[@id='cart-subtotal-products']/span[@class='value']")), 7000);
    const elementText = await element.getText();
    let amount = await this.data.get(mn);
    let a = amount.replace(/\Gs./g, '');
    let num = parseFloat(a);
    let monto = (num * 2).toString();
    await assert(elementText.includes(monto), `el monto inicial era de ${amount}, al agregar otro se busco que fuera ${monto}, pero se encontro ${elementText}`);

});

Then('Verifico que el valor de {string} sea el triple', async function (mn) {
    await this.driver.sleep(5000);
    const element = await this.driver.wait(until.elementLocated(By.xpath("//div[@id='cart-subtotal-products']/span[@class='value']")), 7000);
    const elementText = await element.getText();
    let amount = await this.data.get(mn);
    let a = amount.replace(/\Gs./g, '');
    let num = parseFloat(a);
    let monto = (num * 3).toString();
    await assert(elementText.includes(monto), `el monto inicial era de ${amount}, al agregar dos productos se busco que fuera ${monto}, pero se encontro ${elementText}`)

});

Then('Verifico que el valor de {string} sea la mitad', async function (mn) {
    await this.driver.sleep(5000);
    const element = await this.driver.wait(until.elementLocated(By.xpath("//div[@id='cart-subtotal-products']/span[@class='value']")), 7000);
    const elementText = await element.getText();
    let amount = await this.data.get(mn);
    let a = amount.replace(/\Gs./g, '');
    let num = parseFloat(a);
    let monto = (num / 2).toString();
    await assert(elementText.includes(monto), `el monto inicial era de ${amount}, al agregar dos productos se busco que fuera ${monto}, pero se encontro ${elementText}`)

});