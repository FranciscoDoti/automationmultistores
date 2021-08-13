const { setWorldConstructor, setDefaultTimeout, setDefinitionFunctionWrapper } = require('cucumber');
const seleniumWebdriver = require('selenium-webdriver');
const chromedriver = require('chromedriver');
const chrome = require('selenium-webdriver/chrome');
const { getDriver } = require(`${process.cwd()}/driver`);
const argv = require('minimist')(process.argv.slice(2));
const config = require(`${process.cwd()}/config.json`);
const { log } = require(`${process.cwd()}/logger`);
const jsonfile = require('jsonfile');
const testrail = require(`${process.cwd()}/test-automation-pack/testrailuploader`);
const rc = jsonfile.readFileSync(`${process.cwd()}/test-automation-packrc.json`);
const urls = require(`${process.cwd()}/urls.json`);

function ThisWorld({ attach, parameters }) {
  this.envir = parameters.ambiente;
  console.log(`Ejecutando las pruebas en el ambiente: ${this.envir}`);
  this.page = '';
  this.config = '';
  this.argv = argv;
  setDefaultTimeout('90000');
  this.driver = getDriver();
  this.env = config.env;
  console.log(`El ambiente en el que se correran las pruebas es: ${this.env}`);
  this.data = new Map();
  this.screenshots = 'onFail';
  this.attach = attach;
};

setWorldConstructor(ThisWorld);

setDefinitionFunctionWrapper((fn) => {
  return async function () {
    await fn.apply(this, arguments);
    if (this.screenshots !== undefined && this.screenshots.toLowerCase().includes("always")) {
      try {
        await this.attach(await this.driver.takeScreenshot(), "image/png");
      } catch (ex) {
        log.error(ex);
      }
    }
  };
});


async function testRailUpload() {
  if (rc.testrail.upload_results === true) {
    const user = rc.testrail.user;
    const report = `${process.cwd()}/reports/cucumber_report.json`;
    //const suite = rc.testrail.suite_name;
    //const suite = 'supervielleCarrito';
    const cucumberReport = jsonfile.readFileSync(`${process.cwd()}/reports/cucumber_report.json`);
    const suite = cucumberReport[0].name;
    const run = `Results: UI - Automation ${suite}`;

    const uploader = testrail.cucumberToTestRail();
    await console.log(user);
    await console.log(report);
    await console.log(suite);
    await uploader.uploadCases(user, report, suite);
    await uploader.uploadResults(user, report, suite, run);
  }
}

process.once('beforeExit', async () => {
  await console.log('Comienza subida de reporte a TestRail')
  testRailUpload();
});