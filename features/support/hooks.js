const { BeforeAll, Before, After, AfterAll } = require('cucumber');
const { log } = require(`${process.cwd()}/logger`);
const config = require(`${process.cwd()}/config.json`);
const { getDriver } = require(`${process.cwd()}/driver.js`);
const { By, Key, until } = require('selenium-webdriver');
var driver = getDriver();

Before(async function (scenario) {

  await log.info('Empezando a ejecutar: ' + scenario.pickle.name);


})

After({ tags: '@supervielle and not @noLoguea' }, async function () {

  await log.info('Comenzando cerrado de sesion de supervielle');
  await driver.sleep(5000);
  var elementCerrarSesion = await driver.findElement(By.xpath('//header/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[4]/div[2]/a[1]'));
  await elementCerrarSesion.click();
  await log.info('Se ha clickeado en el elemento Cerrar sesión');
  

})
After({ tags: '@itau and not @noLoguea' }, async function () {

  await log.info('Comenzando cerrado de sesion de ITAU');
  await driver.sleep(5000);
  var miCuenta = await driver.findElement(By.xpath('//span[contains(text(),"Mi cuenta")]'));
  await miCuenta.click();
  await driver.sleep(4000);
  var salir = await driver.findElement(By.xpath('//i[@class="fas fa-sign-out-alt"]'));
  await salir.click();
  await log.info('Se ha clickeado en el elemento Cerrar sesión');
  

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
