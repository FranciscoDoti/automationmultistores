const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { Actions } = require('selenium-webdriver');

Then('Verifico que la suma del producto mas el costo de envio es igual al valor total a pagar', async function () {

    var ElementPrecioProducto = await buscarElemento(this.page, 'PrecioProducto');

    var ElementCostoEnvio = await buscarElemento(this.page, 'CostoEnvio');
    var ElementTotalAPagar = await buscarElemento(this.page, 'TotalAPagar');
    var textoPrecioProducto = await ElementPrecioProducto.getText();
    var textoCostoEnvio = await ElementCostoEnvio.getText();
    var textoTotalAPagar = await ElementTotalAPagar.getText();

    await console.log('voy a poner un console log acá para hacer frenar esto')

    



});

Then('Valido propiedades del campo Alias', async function () {
    await llenarCampo(this.page, 'Alias', '12345678901234567890123456789012345')
    var webElement = await buscarElemento(this.page, 'Alias');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 32,
        'Error. El campo alias debería tener un maximo de 32 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Alias', '123')
    var webElement = await buscarElemento(this.page, 'Alias');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement == '123',
        'Error. El campo alias debería aceptar números. Se esperaba el texto 123. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Alias', '!/&');
    var webElement = await buscarElemento(this.page, 'Alias');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement == '!/&',
        'Error. El campo alias debería aceptar caracteres especiales. Se esperaba el texto !/&. Se encontró: ' + textoWebElement);
})


Then('Valido propiedades del campo Nombre', async function () {
    !await llenarCampo(this.page, 'Nombre', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Nombre');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 255,
        'Error. El campo Nombre debería tener un maximo de 255 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Nombre', '123')
    var webElement = await buscarElemento(this.page, 'Nombre');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '123',
        'Error. El campo Nombre no debería aceptar números. Se ingresó 123. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Nombre', '!/&');
    var webElement = await buscarElemento(this.page, 'Nombre');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo Nombre no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})


Then('Valido propiedades del campo Apellido', async function () {
    !await llenarCampo(this.page, 'Apellido', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Apellido');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 255,
        'Error. El campo Apellido debería tener un maximo de 255 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Apellido', '123')
    var webElement = await buscarElemento(this.page, 'Apellido');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '123',
        'Error. El campo Apellido no debería aceptar números. Se ingresó 123. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Apellido', '!/&');
    var webElement = await buscarElemento(this.page, 'Apellido');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo Apellido no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})




Then('Valido propiedades del campo DNI', async function () {
    !await llenarCampo(this.page, 'DNI', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'DNI');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 16,
        'Error. El campo DNI debería tener un maximo de 16 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'DNI', 'abc')
    var webElement = await buscarElemento(this.page, 'DNI');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != 'abc',
        'Error. El campo DNI no debería aceptar letras. Se ingresó abc. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'DNI', '!/&');
    var webElement = await buscarElemento(this.page, 'DNI');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo DNI no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})



Then('Valido propiedades del campo Calle', async function () {
    !await llenarCampo(this.page, 'Calle', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Calle');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 255,
        'Error. El campo Calle debería tener un maximo de 255 caracteres. Se encontraron: ' + textoWebElement.length);

    await llenarCampo(this.page, 'Calle', '!/&');
    var webElement = await buscarElemento(this.page, 'Calle');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo Calle no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})



Then('Valido propiedades del campo Numero', async function () {
    !await llenarCampo(this.page, 'Numero', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Numero');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 255,
        'Error. El campo Numero debería tener un maximo de 255 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Numero', 'abc')
    var webElement = await buscarElemento(this.page, 'Numero');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != 'abc',
        'Error. El campo Numero no debería aceptar letras. Se ingresó abc. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Numero', '!/&');
    var webElement = await buscarElemento(this.page, 'Numero');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo Numero no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})


Then('Valido propiedades del campo Piso', async function () {
    !await llenarCampo(this.page, 'Piso', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Piso');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 255,
        'Error. El campo Piso debería tener un maximo de 255 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Piso', 'abc')
    var webElement = await buscarElemento(this.page, 'Piso');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != 'abc',
        'Error. El campo Piso no debería aceptar letras. Se ingresó abc. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Piso', '!/&');
    var webElement = await buscarElemento(this.page, 'Piso');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo Piso no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})


Then('Valido propiedades del campo Departamento', async function () {
    !await llenarCampo(this.page, 'Departamento', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Departamento');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 255,
        'Error. El campo Departamento debería tener un maximo de 255 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Departamento', 'abc')
    var webElement = await buscarElemento(this.page, 'Departamento');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement == 'abc',
        'Error. El campo Departamento  debería aceptar letras. Se ingresó abc. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Departamento', '!/&');
    var webElement = await buscarElemento(this.page, 'Departamento');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo Departamento no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})


Then('Valido propiedades del campo CodigoPostal', async function () {
    !await llenarCampo(this.page, 'CodigoPostal', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'CodigoPostal');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 12,
        'Error. El campo CodigoPostal debería tener un maximo de 12 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'CodigoPostal', 'abc')
    var webElement = await buscarElemento(this.page, 'CodigoPostal');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != 'abc',
        'Error. El campo CodigoPostal no  debería aceptar letras. Se ingresó abc. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'CodigoPostal', '!/&');
    var webElement = await buscarElemento(this.page, 'CodigoPostal');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement != '!/&',
        'Error. El campo CodigoPostal no  debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})



Then('Valido propiedades del campo Ciudad', async function () {
    !await llenarCampo(this.page, 'Ciudad', '123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    var webElement = await buscarElemento(this.page, 'Ciudad');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement.length == 64,
        'Error. El campo Ciudad debería tener un maximo de 64 caracteres. Se encontraron: ' + textoWebElement.length);
    await llenarCampo(this.page, 'Ciudad', 'abc')
    var webElement = await buscarElemento(this.page, 'Ciudad');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement == 'abc',
        'Error. El campo Ciudad   debería aceptar letras. Se ingresó abc. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Ciudad', '123')
    var webElement = await buscarElemento(this.page, 'Ciudad');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement == '123',
        'Error. El campo Ciudad   debería aceptar números. Se ingresó 123. Se encontró: ' + textoWebElement);

    await llenarCampo(this.page, 'Ciudad', '!/&');
    var webElement = await buscarElemento(this.page, 'Ciudad');
    var textoWebElement = await webElement.getAttribute('value');
    await assert.isTrue(textoWebElement == '!/&',
        'Error. El campo Ciudad   debería aceptar caracteres especiales. Se ingresó el texto !/&. Se encontró: ' + textoWebElement);
})
