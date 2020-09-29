Feature: T-shirt comparision Functionality
  Scenario: to verify user is able to see confirmation message  no product for comparison

    Given user is on the home page
  When user click on apparel
  And user click on clothing from left side menu
  And user select  sort by low to high price
  And user select display 3 per page
  And click on list
  And user take screenshot
  And user add custom t-shirt to compare list
  And user add oversized women t-shirt to compare list
  And user take again screen short with green line on top with message "the product has been added to your product comparison"
  And user click on product comparison from green line link
  And user verify product name
  And user click on clear compare list
  Then user should able to  see confirmation message "no product for comparison".


  Scenario: to verify user is able to see confirmation message  no product for comparison
Given user is on home page
When user click on apparel
And user click on clothing from left side menu
And user select sort-by high to low price
And user select display 9 per page
And user click on list
And user add to custom t-shirt to compare list
And user add to oversized women t-shirt to compare list
And user click on product comparison from green line link
And user verify product name
And user click on  compare list
Then user should able to see confirmation message  "no product for comparison message".