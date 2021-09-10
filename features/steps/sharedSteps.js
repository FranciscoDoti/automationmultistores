const { Given, When, Then } = require('cucumber');
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento } = require('../support/functions');
const { getDriver } = require(`${process.cwd()}/driver.js`);
const { assert } = require('chai');
const { log } = require(`${process.cwd()}/logger`);
const urls = require(`${process.cwd()}/urls.json`);
require(`${process.cwd()}/features/support/functions.js`);
const { Actions } = require('selenium-webdriver');
const { By, Key, until, WebElement } = require('selenium-webdriver');
var driver = getDriver();
const regex = new RegExp(`<elementContains>`);
let newDriver = require('selenium-webdriver');
const config = require(`${process.cwd()}/config.json`);

Given(/^Abro la pagina "(.*)"$/, async function (web) {

    // await this.driver.manage().deleteAllCookies();

    try {
        await this.driver.get(urls[this.envir][web]);
        /*
        await log.info('Ejecutando la prueba en el ambiente: ' + this.env[web]);
        await log.info('abriendo la pagina: ' + urls[this.env[web]][web]);*/
        //await this.driver.sleep(10000);

    } catch (error) {
        if (error.message.includes("ERR_CONNECTION_TIMED_OUT")) {
            await log.error("Error de timeout al intentar abrir la página");

        } else {
            await log.error('No se pudo abrir la página. Revisar los archivos urls y config');
        }
        await assert.fail('Falló porque no se pudo abrir la página');
        await log.error(error);
        await process.exit();
    }

});

Given(/^Leo los datos de "(.*)"$/, async function (json) {
    this.page = require(`${process.cwd()}/features/pages/${json}.json`);
    this.config = require(`${process.cwd()}/features/configurationData/${json}Data.json`);

});


When(/^Hago click en "(.*)"$/, async function (elementKey) {
    await clickElement(this.page, elementKey);
});

When('Hago doble click en {string}', async function (elementKey) {
    const element = await buscarElemento(this.page, elementKey);
    const actions = driver.actions({ async: true });
    await actions.doubleClick(element).perform();
})

When(/^Abro la siguiente Url "(.*)"$/, async function (url) {
    await this.driver.get(url);
    await log.info(' abriendo la siguiente url: ' + url);
    await this.driver.sleep(15000);
});

When(/^Abro la siguiente Url "(.*)" yendo a buscar la config$/, async function (datoJson) {
    var textoQueVamosAMandar = this.config[datoJson];
    await this.driver.get(textoQueVamosAMandar);
    await log.info(' abriendo la siguiente url: ' + textoQueVamosAMandar);
    await this.driver.sleep(15000);
});

When(/^Scrolleo hasta el elemento "(.*)" y hago click$/, async function (elementKey) {
    //await clickElementWithExecutor(this.page, elementKey);
    var element = await buscarElemento(this.page, elementKey);
    if (element == 'ELEMENT_NOT_FOUND') {
        await assert.fail('no se pudo localizar el elemento')
    } else {

        try {

            await this.driver.executeScript("arguments[0].scrollIntoView(false);", element);
            log.info('se scrolleo hasta el elemento: ' + elementKey)
        } catch {
            log.error('no se pudo scrollear hasta el elemento: ' + elementKey);
        }
        await this.driver.sleep(3000);
        try {

            await element.click();
            log.info('se hizo click sobre elemento: ' + elementKey);
        } catch {
            await assert.fail('hubo un error al hacer click en el elemento: ' + elementKey);

        }
    }
});

When(/^Hago click que contenga "(.*)" "(.*)"$/, async function (elementKey, contains) {

    var element = await buscarElemento(this.page, elementKey, contains);
    try {
        await element.click();
    } catch {
        log.error(`no se pudo hacer click en el elemento ${elementKey}`);
        await assert.fail('error al clickear sobre el elemento, por favor, revisar locators');
    }
})

When(/^Hago click que contenga "(.*)" "(.*)" yendo a buscar la config$/, async function (elementKey, datoJson) {
    var textoQueVamosAMandar = this.config[datoJson];
    var element = await buscarElemento(this.page, elementKey, textoQueVamosAMandar);
    try {
        await element.click();
    } catch {
        log.error(`no se pudo hacer click en el elemento ${elementKey}`);
        await assert.fail('error al clickear sobre el elemento, por favor, revisar locators');
    }
})

When(/^Paso el mouse por encima de "(.*)"$/, async function (elementKey) {
    var webElement = await buscarElemento(this.page, elementKey);
    if (webElement != 'ELEMENT_NOT_FOUND') {
        await this.driver.actions({ bridge: true }).move({ x: 0, y: 0, origin: webElement }).perform();
        await this.driver.sleep(5000);
    } else {
        await assert.fail('no se pudo localizar el elemento ' + elementKey);
    }
});

When(/^Lleno el campo "(.*)" con "(.*)"$/, async function (elementKey, texto) {
    await llenarCampo(this.page, elementKey, texto);
});


When(/^Lleno el campo "(.*)" con "(.*)" yendo a buscar la config$/, async function (elementKey, datoJson) {
    var textoQueVamosAMandar = this.config[datoJson];
    await llenarCampo(this.page, elementKey, textoQueVamosAMandar);
});


When('Lleno los siguientes campos', async function (datatable) {

    for (var i = 0; i < datatable.rawTable.length; i++) {
        if (this.config[datatable.rawTable[i][1]] == undefined) {

            if (datatable.rawTable[i][1] != 'RANDOM') {
                await llenarCampo(this.page, datatable.rawTable[i][0], datatable.rawTable[i][1]);  // funcion original sin parametro de DataJson
                //await llenarCampo(this.page, datatable.rawTable[i][0], this.config[datatable.rawTable[i][1]]);
            } else {
                var random = Math.random().toString().slice(2, 4);
                await llenarCampo(this.page, datatable.rawTable[i][0], random);
            }
        } else {
            if (datatable.rawTable[i][1] != 'RANDOM') {
                await llenarCampo(this.page, datatable.rawTable[i][0], this.config[datatable.rawTable[i][1]]);
            } else {
                var random = Math.random().toString().slice(2, 4);
                await llenarCampo(this.page, datatable.rawTable[i][0], random);
            }
        }
    }
});


When('Lleno los siguientes campos leyendo la config', async function (datatable) {

    for (var i = 0; i < datatable.rawTable.length; i++) {
        if (datatable.rawTable[i][1] != 'RANDOM') {
            await llenarCampo(this.page, datatable.rawTable[i][0], this.config[datatable.rawTable[i][1]]);
        } else {
            var random = Math.random().toString().slice(2, 4);
            await llenarCampo(this.page, datatable.rawTable[i][0], random);
        }
    }
});


When('Lleno los siguientes campos con Executor', async function (datatable) {

    for (var i = 0; i < datatable.rawTable.length; i++) {
        if (datatable.rawTable[i][1] != 'RANDOM') {
            await llenarCampoConExecutor(this.page, datatable.rawTable[i][0], datatable.rawTable[i][1]);
        } else {
            var random = Math.random().toString().slice(2, 4);
            await llenarCampoConExecutor(this.page, datatable.rawTable[i][0], random);
        }
    }


});

When(/^Obtengo el texto del elemento "(.*)" y lo guardo en la variable "(.*)"$/
    , async function (elementKey, nombreVariable) {
        var textoExtraido = await obtenerTexto(this.page, elementKey);
        await this.data.set(nombreVariable, textoExtraido);

        var textoEnVariable = await this.data.get(nombreVariable);
        await log.info(' se guardó el texto ' + textoEnVariable + ' en la variable ' + nombreVariable);
    });

When(/^Scrolleo hasta el elemento "(.*)"$/, async function (elementKey) {

    var element = await buscarElemento(this.page, elementKey);
    if (element == 'ELEMENT_NOT_FOUND') {
        await assert.fail('no se pudo localizar el elemento')
    } else {

        await this.driver.executeScript("arguments[0].scrollIntoView(true);", element);
        log.info('se scrolleo hasta el elemento: ' + elementKey)

        log.error('no se pudo scrollear hasta el elemento: ' + elementKey);

    }
    await this.driver.sleep(3000);
});

When(/^Presiona tecla ENTER en elemento "(.*)"$/, async function (elementKey) {

    var element = await buscarElemento(this.page, elementKey);
    if (element == 'ELEMENT_NOT_FOUND') {
        await assert.fail('no se pudo localizar el elemento')
    } else {
        //await llenarCampo(this.page, elementKey, Key.ENTER)
        await element.sendKeys(Key.ENTER);
        log.info('se presiona ENTER en el elemento: ' + elementKey)
    }

});


Then(/^Verifico que el elemento "(.*)" contiene el texto alojado en la variable "(.*)"$/, async function (elementKey, nombreVariable) {
    var textoElemento = await obtenerTexto(this.page, elementKey);
    var textoEnVariable = await this.data.get(nombreVariable);
    await assert(textoElemento == textoEnVariable, `Texto del elemento: ${textoElemento}
      .Texto guardado en variable: ${textoEnVariable}`);

});

Then(/^Verifico que el elemento "(.*)" no exista$/, async function (elementKey) {
    var respuesta = await buscarElemento(this.page, elementKey);
    await assert(respuesta == 'ELEMENT_NOT_FOUND', `respuesta = ${respuesta}`);

});

Then(/^Verifico que el elemento "(.*)" exista$/, async function (elementKey) {
    var respuesta = await buscarElemento(this.page, elementKey);
    await assert(respuesta != undefined, `Se busco que el elemento ${elementKey} existiera, pero este no fue encontrado`)

});

Then(/^Verifico que el campo "(.*)" contenga el texto "(.*)"$/, async function (elementKey, texto) {
    await assertText(this.page, elementKey, texto);
});

Then(/^Verifico que el elemento "(.*)" este deshabilitado$/, async function (elementKey) {
    var webElement = await buscarElemento(this.page, elementKey);
    if (webElement != 'ELEMENT_NOT_FOUND') {
        var estaHabilitado = await webElement.isEnabled();
        await assert.isFalse(estaHabilitado);
    } else {
        await assert.fail('No se pudo localizar el elemento ' + elementKey);
    }

});

Then(/^Verifico que el campo "(.*)" contenga el texto "(.*)" yendo a buscar la config$/, async function (elementKey, datoJson) {
    var textoQueVamosAMandar = this.config[datoJson];
    await assertText(this.page, elementKey, textoQueVamosAMandar);

});

Then(/^Verifico que el elemento "(.*)" este habilitado$/, async function (elementKey) {
    var webElement = await buscarElemento(this.page, elementKey);
    if (webElement != 'ELEMENT_NOT_FOUND') {
        var estaHabilitado = await webElement.isEnabled();
        await assert.isTrue(estaHabilitado);
    } else {
        await assert.fail('No se pudo localizar el elemento ' + elementKey);
    }

});

Then('Valido que el campo {string} sea de propiedad {string}', async function (elementKey, type) {
    const element = await buscarElemento(this.page, elementKey);
    const atributo = await element.getAttribute('type');
    switch (type) {
        case "texto":
            await assert(atributo == 'text', `Se buscó que el elemento fuera de tipo texto, pero se encontró ${atributo}`);
            break;
        case "numero":
            await assert(atributo == 'tel', `Se buscó que el elemento fuera de tipo numero, pero se encontró ${atributo}`);
            break;
        case "password":
            await assert(atributo == 'password', `Se buscó que el elemento fuera de tipo password, pero se encontró ${atributo}`);
            break;
        default:
            log.error(`no se encontro ninguna opcion de validacion para la propiedad ${type}, por favor revisar el parametro enviado`);
    }
});

Then('Verifico que los elementos {string} contengan el texto {string}', async function (elementKey, contains) {

    const element = await this.driver.wait(until.elementsLocated(By.xpath(this.page[elementKey].valor)), 5000);
    await this.driver.sleep(1000);
    let error = 0;
    for (let i = 0; i <= element.length; i++) {
        const text = await element[i].getText();
        const verificacion = await text.toLowerCase();
        try {
            await assert(verificacion.includes(contains), `error`);
        } catch {
            error++;
        }
        if (error >= 3) {
            await assert.fail(`Se encontro que el texto capturado en mas de 3 ocasiones no contenia el texto ${contains}`);
        }

    }
});

Then('Verifico que se haya redirigido a la pagina que contenga {string}', async function (web) {
    await this.driver.sleep(2000);
    const url = await this.driver.getCurrentUrl();
    await assert(url.includes(web), `error`);

});

Given('Retroceder en la página', async function () {
    await this.driver.navigate().back();
    console.log('Se presiona botón de retroceder en el navegador.');
})

