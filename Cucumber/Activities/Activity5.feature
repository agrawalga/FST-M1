@activity5
Feature: Testing Login with Example

  Scenario Outline: Testing with Data from Scenario
    Given User is on the Login page1
    When User enters the "<Usernames>" and "<Passwords>"
    Then Read the page title and confirmation messages.
    And User Close the Browser.

    Examples:
      | Usernames | Passwords |
      | admin     | password  |
      | adminUser | Password  |