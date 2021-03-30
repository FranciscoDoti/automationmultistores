const { BeforeAll, Before, After, AfterAll } = require('cucumber');
const { log } = require(`${process.cwd()}/logger`);
const config = require(`${process.cwd()}/config.json`);
const { getDriver } = require(`${process.cwd()}/driver.js`);
const { By, Key, until } = require('selenium-webdriver');
var driver = getDriver();
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento, clickElementWithExecutor,
  llenarCampoConExecutor} = require('../support/functions');

Before(async function (scenario) {

  await log.info('Empezando a ejecutar: ' + scenario.pickle.name);
  await console.log(this.page)

})

After({ tags: '@supervielle and not @noLoguea' }, async function () {
 
  await log.info('Comenzando cerrado de sesion de supervielle');
  await clickElement(this.page, 'CerrarSesion');
  

})
After({ tags: '@itau and not @noLoguea' }, async function () {

  await log.info('Comenzando cerrado de sesion de ITAU');

  await clickElement(this.page, 'MiCuenta');
  await clickElement(this.page, 'Salir');

  

})
After(async function (scenario) {
  if (scenario.result.status === 'failed') {
    await log.error("Resultado del escenario: " + scenario.result.status)
  } else {
    await log.info("Resultado del escenario: " + scenario.result.status)
  }
})

AfterAll(async function () {
  await driver.close();
  await log.info('cerrando el navegador.')
})


//***********           this After always needs to be at the bottom of this file           ***********//
After(async function (scenario) {
  if (this.screenshots.toLowerCase().includes('onfail') &&
    scenario.result.status.toLowerCase().includes('fail')) {
    await this.attach(await this.driver.takeScreenshot(), 'image/png');
  }
});
