Feature: Gift card Functionality
  Scenario: to verify user is able to send an email a friend and the final message
    Given user is on the home page
    When user click on the register button
    And user fill all the mandatory/required  field on the registration page
    And user click on the register button on the registration page
    Then user should able to register successfully
    And user should able to see registered successfully confirmation message
    Then user click on logout button on the register result page
    And  user click on  login button on the home page
    And  user enter registered email address and password
    And  user click on login button
    Then user should able to log in successfully
    When user click on gift card button
    And user click on virtual gift card cart button
    And user filling all personal detail
    And user click on email friend button
    And user filling data friends email and your email address
    And user click on send email button
    And user verify final message
    Then user should able to see successfully final message


  Scenario Outline:  to verify user is able to send an email a friend and the final message
    Given user is on the home page
    When user click on the register button
    And user enter <FirstName><LastName><Email><password><ConfirmPassword>
    And user click on the register button on the registration page
    Then user should able to register successfully
    And user should able to see registered successfully confirmation message
    Then user click on logout button on the register result page
    And  user click on  login button on the home page
    And  user enter registered email address and password
    And  user click on login button
    Then user should able to log in successfully
    When user click on gift card button
    And user click on virtual gift card cart button
    And user enter <Recipient's Name><Recipient's Email><UserName><User Email>
    And user click on email friend button
    And user enter <Friends email> <User email address><PersonalMessage>
    And user click on send email button
    And user verify final message
    Then user should able to see successfully final message
    Examples:
      | FirstName|LastName|Email         |password|ConfirmPassword|Recipient's Name|Recipient's Email|UserName|User Email   |Friends email|User email address |PersonalMessage|
      |  Sejal   |Makrubiya|abc@yahoo.com|gujrati23|gujrati23     | Sita           |rekha@test.com   |Radha   |abc@yahoo.com|rekha@test.com|abc@yahoo.com     |Hi             |

