@site_basics
Feature: Test for basic site function
  Background: After I show the running environment
    Given I show the running environment
    And I am testing the correct domain

  @site_up
  Scenario: The web site is up and representing
    Given I go to the home page
    Then the page should show content "Cornell University"

  @https_only
  Scenario: http requests are redirected to https
    Given I go to the home page
    Then the page should show content "Cornell University"
    And the protocol should be https

  @https_only
  Scenario: redirect to https on another page
    Given I go to the home page
    Then I use http to go to "/about"
    And the protocol should be https