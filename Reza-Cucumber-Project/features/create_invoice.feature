Feature: Create a sales invoice
  As a user I want to be able to create invoice from jurnal app

  Scenario: Successfully create sales invoice
    Given I am on sin in page
    Then I fill "email" with "reza.zakaria@sleekr.co"
    And I fill "password" with "sanami2701"
    And I press "Sign In" button
    Then I should be on the dashboard page
    And I click "Sales" button
    Given I am on sales invoice form
    Then I click "select contact" container
    And I choose "Customer SAP"
    And I click "Transaction Date" container
    And I fill "10/10/2020"
    And I click "select product" container
    And I choose "product A"
    And I fill "unit_price" with "10000"
    And I click "browse" link
    And I click "test.jpg"
    And I click "Create" button
    Examples:
      | email | user_email             | password | user_password  | sign_in | unit_price     | amount |
      | email | reza.zakaria@sleekr.co | password | sanami2701 | Sign In | Unit Price | 100000    |