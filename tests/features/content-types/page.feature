@javascript
@api
Feature: Page Content Type
  As an admin I want to test that the page content type is functional

  Background:
    Given I am logged in as a user with the "Administrator" role

  # Check that blog fields are avail
  Scenario: Check page fields
    Given I go to "/node/add/page"
    Then I should see "Create Basic page"
    And I should see "Title"
    And I should see "Body"

  # Test creating a basic page
  Scenario: Create page
    Given I go to "/node/add/page"
    And I fill in "Title" with "Behat Page Test"
    When I press "Save"
    And I wait "2" seconds
    Then I should see "Behat Page Test has been created."
    And I wait "2" seconds
