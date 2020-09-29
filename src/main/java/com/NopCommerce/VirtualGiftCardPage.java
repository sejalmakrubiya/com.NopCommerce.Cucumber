package com.NopCommerce;

import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class VirtualGiftCardPage extends Utils{
    String myEmail = "abc" + timeStamp() + "@yahoo.com";
    String recipientEmail = "automation" + timeStamp() + "@yahoo.com";

    By _recipientName =  By.id("giftcard_43_RecipientName");
    By _recipientEmail = By.id("giftcard_43_RecipientEmail");
    //By _yourName =By.id("giftcard_43_SenderName");
    //By _yourEmail =By.id("giftcard_43_SenderEmail");
    By _emailFriend = By.cssSelector("input.button-2.email-a-friend-button.valid");


    public void fillingAllPersonalDetail(){
        typeText(_recipientName,"Sita");
        typeText(_recipientEmail, "rekha@test.com");
        //typeText(_yourName,"Radha");
        // typeText(_yourEmail,myEmail);


    }
    public void clickOnEmailFriend(){
        WebDriverWait wait = new WebDriverWait(driver,30);
        wait.until(ExpectedConditions.elementToBeClickable(_emailFriend));
        // WebDriverWait wait = new WebDriverWait(driver, 30);
        //wait.until(ExpectedConditions.textToBePresentInElement(By.xpath("xpath expression")
        clickOnElement(_emailFriend);

    }

}
