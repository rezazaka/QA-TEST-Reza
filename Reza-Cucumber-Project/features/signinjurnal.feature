Feature: Sign in to jurnal
  As a user I want to be able to sign in to jurnal app

  Scenario Outline: Successfully sign in
    Given I am on sin in page
    Then I fill "<email>" with "<user_email>"
    And I fill "<password>" with "<user_password>"
    And I press "<sign_in>" button
    Then I should be on the dashboard page
    Examples:
      | email | user_email             | password | user_password  | sign_in |
      | email | reza.zakaria@sleekr.co | password | sanami2701 | Sign In |