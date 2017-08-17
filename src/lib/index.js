const puppeteer = require('puppeteer');

(async() => {
  try {
    const browser = await puppeteer.launch({
      args: ['--no-sandbox']
    });
    const page = await browser.newPage();
    await page.setViewport({
      width: 1920,
      height: 1200
    })
    await page.goto('https://nudj.co/');
    await page.waitFor(2000);
    await page.screenshot({
      path: 'output/home.png',
      fullPage: true
    });
    // await page.click('#app > div > footer > div > div > ul > li:nth-child(3) > a');
    // await page.waitFor(2000);
    // await page.screenshot({
    //   path: 'output/job.png',
    //   fullPage: true
    // });
    browser.close();
  } catch (error) {
    console.error(error)
  }
})();
