Feature: Login to SauceDemo

  Scenario: Verify successful login
    Given User is on the login page
    When User enters "<username>" and "<password>" from Excel
    When User clicks the login button
    Then User should be logged in and title should be "Swag Labs"
    When enter invalid username "invaliduser" and password "invalid"
    When User clicks for Invalid scenario the login button
    Then User should see an error message

  Examples:
    | username               | password       |
    | standard_user          | secret_sauce   |
    | problem_user           | secret_sauce   |
    | performance_glitch_user| secret_sauce   |
    | error_user             | secret_sauce   |
    | visual_user            | secret_sauce   |
    
  