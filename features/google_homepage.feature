Feature: Google Home Page Feature
  As a user
  I want to navigate all the google products page

  Scenario Outline: User can navigate all the google products page
    Given I am logging google home page
    When I select <option> from the header
    Then I should see <option> product page
  Examples: header links
    | option  |
    | Play    |
    | Images  |
    | Maps    |