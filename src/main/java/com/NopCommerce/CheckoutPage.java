package com.NopCommerce;

import org.openqa.selenium.By;

public class CheckoutPage extends Utils{
    By _orderConfirmationMessage = By.xpath("//strong[contains(text(),'your order has been sucessfully processed!)]");

    public String verifyOrderConfirmationText(){
        return getText(_orderConfirmationMessage);
    }
}
