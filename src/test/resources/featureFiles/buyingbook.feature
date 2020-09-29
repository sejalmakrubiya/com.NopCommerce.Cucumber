Feature: Buying a book functionality

  Scenario: to verify user is able to see oder confirmation message after buying book
  Given user is on home page
  When user click on books
  And user click on fahrenheit 451 by ray bradbury
  And user change quantity of the product 4
  And user add fahrenheit 451 by ray bradbury book in wishlist
  Then user should see The product has been added to your wishlist message from top green line
  And user add product in to cart
  And user click on cart from top green message
  And user click on  term and condition
  And user click on checkout
  And user click on checkout as guest
  And user filled personal details from checkout
  And user click on continue button from one page check out page
  And user click on continue button from shipping page
  And user click on credit card
  And user click on continue from opc payment method page
  And user add card details
  Then user click on continue button to order till end
  Then user verify confirmation message
  Then user should able to see successful order confirmation message

  Scenario Outline: to verify user is able to see oder confirmation message after buying book
    Given user is on home page
    When user click on books
    And user click on fahrenheit 451 by ray bradbury
    And user change quantity of the product 4
    And user add fahrenheit 451 by ray bradbury book in wishlist
    Then user should see The product has been added to your wishlist message from top green line
    And user add product in to cart
    And user click on cart from top green message
    And user click on  term and condition
    And user click on checkout
    And user click on checkout as guest
    And user filled personal details from checkout<FirstName><LastName><Email><country><city><Address><postcode><PhoneNumber>
    And user click on continue button from one page check out page
    And user click on continue button from shipping page
    And user click on credit card
    And user click on continue from opc payment method page
    And user add card details<CreditCardType><cardholderName><CardNumber><ExpiryMonth><ExpiryYear><CardCode>
    Then user click on continue button to order till end
    Then user verify confirmation message
    Then user should able to see successful order confirmation message
  Examples:
    |FirstName|LastName|Email            |country       |city  |Address     |postcode|PhoneNumber |CreditCardType|cardholderName|CardNumber      |ExpiryMonth|ExpiryYear|CardCode|
    |Reena    |Roy     |reenaRoy@test.com|United Kingdom|London|609 RamNagar|gr6 8lo  |08563423905|MasterCard    |Mr Roy        |567896432670004 |04          |2021     |324     |


