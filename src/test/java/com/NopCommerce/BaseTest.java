package com.NopCommerce;

import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;

import java.util.concurrent.TimeUnit;

public class BaseTest extends Utils {
    @BeforeMethod
    public void openBrowser(){
        BrowserSelector browserSelector=new BrowserSelector();
        browserSelector.selectBrowser();
        driver.get("https://demo.nopcommerce.com/");
        driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        driver.manage().window().maximize();

    }
   // @AfterMethod
   // public void closeBrowser(){
       // driver.quit();
   // }
}
