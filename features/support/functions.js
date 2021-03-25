const { getDriver } = require(`${process.cwd()}/driver.js`);
var driver = getDriver();
const { assert } = require('chai');
const { By, Key, until } = require('selenium-webdriver');
const { ExceptionHandler, exceptions } = require('winston');
const { log } = require(`${process.cwd()}/logger`);
const cantReintentos = 10;

async function buscarElemento(json, element) {
    var elementoEncontrado = false;
    var nroReintento = 1;
    var errorTrace;

    while ((!elementoEncontrado) && (nroReintento <= cantReintentos)) {

        try {
            await log.info('Localizando elemento: ' + element);
            var webElement = await driver.wait(until.elementLocated(By.xpath(json[element].valor)), 5000, 5000, 5000);
            await driver.sleep(4000);
            elementoEncontrado = true;

        } catch (error) {
            errorTrace = error;
            if (error.name === 'TimeoutError') {
                await log.error('No se pudo localizar al elemento ' + element);
                await log.info('Número de intento ' + nroReintento);

            } else {
                await log.error(error);
            }

            nroReintento++;
        }
    }

    if (!elementoEncontrado) {
        return "ELEMENT_NOT_FOUND";
    } else {
        return webElement;
    }
}

async function obtenerTexto(json, element) {

    var elementoEncontrado = false;
    var nroReintento = 1;
    var errorTrace;
    while ((!elementoEncontrado) && (nroReintento <= cantReintentos)) {
        try {
            await log.info('Localizando elemento: ' + element);
            var webElement = await driver.wait(until.elementLocated(By.xpath(json[element].valor)), 5000, 5000, 5000);
            await driver.sleep(4500);
            var textoExtraido = await webElement.getText();
            await log.info('Se extrajo el texto' + textoExtraido + ' del elemento ' + element);
            elementoEncontrado = true;

        } catch (error) {
            errorTrace = error;
            if (error.name === 'TimeoutError') {
                await log.error('No se pudo localizar al elemento ' + element);
                await log.info('Número de intento ' + nroReintento);

            } else {
                await log.error(error);
            }

            nroReintento++;
        }

    }

    if (!elementoEncontrado) {
        switch (errorTrace.name) {
            case 'TimeoutError':
                await assert.fail(' no se pudo localizar al elemento ' + element + '. Error: ' + errorTrace +
                    '. REVISAR EL LOCATOR'
                );
                break;

            default:
                await assert.fail('No se pudo llenar los datos al elemento ' + element + '. Error: ' + errorTrace);
                break;
        }

    } else {
        return textoExtraido;
    }

}

async function clickElement(json, element) {

    var elementoEncontrado = false;
    var nroReintento = 1;
    var errorTrace;

    while ((!elementoEncontrado) && (nroReintento <= cantReintentos)) {

        try {
            await log.info('Localizando elemento: ' + element);
            var webElement = await driver.wait(until.elementLocated(By.xpath(json[element].valor)), 10000, 10000, 10000);
            await driver.sleep(4000);
            await webElement.click();
            await log.info('Se hizo click en el elemento ' + element);
            elementoEncontrado = true;

        } catch (error) {
            errorTrace = error;
            if (error.name === 'TimeoutError') {
                await log.error('No se pudo localizar al elemento ' + element);
                await log.info('Número de intento ' + nroReintento);
            } else {
                await log.error(error);
            }

            nroReintento++;
        }

    }
    if (!elementoEncontrado) {
        switch (errorTrace.name) {
            case 'TimeoutError':
                await assert.fail(' no se pudo localizar al elemento ' + element + '. Error: ' + errorTrace +
                    '. REVISAR EL LOCATOR'
                );
                break;

            default:
                await assert.fail('No se pudo hacer click al elemento ' + element + '. Error: ' + errorTrace);
                break;
        }

    }


}


async function llenarCampo(json, element, texto) {


    var elementoEncontrado = false;
    var nroReintento = 1;
    var errorTrace;

    while ((!elementoEncontrado) && (nroReintento <= cantReintentos)) {

        try {
            await log.info('Localizando elemento: ' + element);
            var webElement = await driver.wait(until.elementLocated(By.xpath(json[element].valor)), 10000, 10000, 10000);
            await driver.sleep(4000);
            await webElement.sendKeys(texto);
            await log.info('Se escribió el texto ' + texto + ' en el elemento ' + element);
            elementoEncontrado = true;

        } catch (error) {
            errorTrace = error;
            if (error.name === 'TimeoutError') {
                await log.error('No se pudo localizar al elemento ' + element);
                await log.info('Número de intento ' + nroReintento);

            } else {
                await log.error(error);
            }

            nroReintento++;
        }
    }

    if (!elementoEncontrado) {
        switch (errorTrace.name) {
            case 'TimeoutError':
                await assert.fail(' no se pudo localizar al elemento ' + element + '. Error: ' + errorTrace +
                    '. REVISAR EL LOCATOR'
                );
                break;

            default:
                await assert.fail('No se pudo llenar los datos al elemento ' + element + '. Error: ' + errorTrace);
                break;
        }

    }


}
async function assertText(json, elementKey, texto) {

    var elementoEncontrado = false;
    var nroReintento = 1;
    var errorTrace;

    while ((!elementoEncontrado) && (nroReintento <= cantReintentos)) {

        try {
            await log.info('Localizando elemento: ' + elementKey);
            var webElement = await driver.wait(until.elementLocated(By.xpath(json[elementKey].valor)), 5000, 5000, 5000);
            await driver.sleep(4500);
            var textoExtraido = await webElement.getText();
            await log.info('Se extrajo el texto del elemento = ' + elementKey);

            elementoEncontrado = true;

        } catch (error) {
            errorTrace = error;
            if (error.name === 'TimeoutError') {
                await log.error('No se pudo localizar al elemento ' + elementKey);
                await log.info('Número de intento ' + nroReintento);
            } else {
                await log.error(error);
            }

            nroReintento++;
        }

    }
    if (!elementoEncontrado) {
        switch (errorTrace.name) {
            case 'TimeoutError':
                await assert.fail(' no se pudo localizar al elemento ' + element + '. Error: ' + errorTrace +
                    '. REVISAR EL LOCATOR'
                );
                break;

            default:
                await assert.fail('No se pudo localizar al elemento ' + element + '. Error: ' + errorTrace);
                break;

        }
    } else {
        await assert(textoExtraido == texto, "El assert falló. Texto extraido: " + textoExtraido + ". Texto esperado: " + texto);
    }

}







module.exports = {
    clickElement,
    llenarCampo,
    assertText,
    obtenerTexto,
    buscarElemento
}
