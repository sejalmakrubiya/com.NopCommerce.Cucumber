Feature: Register Functionality
  Scenario: to verify user is able to register successfully and login again with registered email
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
  And checking account holders detail is correct
  Then user should able to log in successfully


  Scenario Outline: to verify user is able to register successfully and login again with registered email
    Given user is on the home page
    When user click on the register button
    And user enter <FirstName><LastName><Email><Password><ConfirmPassword>
    And user click on register button on the registration page
    Then user should able to register successfully
    And  user should able to see registered successfully confirmation message
    And user click on logout button on the register result page
    And user click on login button on the home page
    And user enter Registered email address and password
    And user click on login button
    Then User should able to log in successfully
  Examples:
        |FirstName|LastName |Email        |Password |ConfirmPassword|
        |  Sejal  |Makrubiya|abc@yahoo.com|gujrati23|gujrati23      |