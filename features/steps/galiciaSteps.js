const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { Actions } = require('selenium-webdriver');

Then('Verifico que la suma del producto mas el costo de envio es igual al valor total a pagar', async function () {

    //acá en vez de usar el findElement uso la funcion buscarElemento 
    //que creamos nosotros que es la que se encarga de hacer los reintentos y todo eso
    var ElementPrecioProducto = await buscarElemento(this.page, 'PrecioProducto');

    var ElementCostoEnvio = await buscarElemento(this.page, 'CostoEnvio');
    var ElementTotalAPagar = await buscarElemento(this.page, 'TotalAPagar');

    var textoPrecioProducto = await ElementPrecioProducto.getText();
    var textoCostoEnvio = await ElementCostoEnvio.getText();
    var textoTotalAPagar = await ElementTotalAPagar.getText();

    await console.log('voy a poner un console log acá para hacer frenar esto')

    // voy a hablar un toque por acá, dale?
    // ok, mirá, lo que voy a hacer ahora es debuggearlo, ponerlo a correr obtener los 3 textos y despues usando el debug
    // usando el debug console, voy a ver cómo puedo trabajar esos strings para obtener los numeros, y luego poder hacer las cuentas

    /// ok? ok



});