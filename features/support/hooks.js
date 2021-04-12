const { BeforeAll, Before, After, AfterAll } = require('cucumber');
const { log } = require(`${process.cwd()}/logger`);
const config = require(`${process.cwd()}/config.json`);
const { getDriver } = require(`${process.cwd()}/driver.js`);
const { By, Key, until } = require('selenium-webdriver');
var driver = getDriver();
const { clickElement, llenarCampo, assertText, obtenerTexto, buscarElemento} = require('../support/functions');

Before(async function (scenario) {
  
  await log.info('Empezando a ejecutar: ' + scenario.pickle.name);


})

After({ tags: '@supervielle and not @noLoguea' }, async function () {
 
  //await log.info('Comenzando cerrado de sesion de supervielle');
  //await driver.actions().sendKeys(Key.HOME).perform();
 // await clickElement(this.page, 'CerrarSesion');
  

})
After({ tags: '@itau and not @noLoguea' }, async function () {

  //await log.info('Comenzando cerrado de sesion de ITAU');
  //await driver.actions().sendKeys(Key.HOME).perform();
  //await clickElement(this.page, 'MiCuenta');
  //await clickElement(this.page, 'Salir');

  

})
After(async function (scenario) {
  if (scenario.result.status === 'failed') {
    await log.error("Resultado del escenario: " + scenario.result.status)
  } else {
    await log.info("Resultado del escenario: " + scenario.result.status)
  }
  await driver.executeScript('window.sessionStorage.clear();window.localStorage.clear();');
  await this.driver.manage().deleteAllCookies();
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
