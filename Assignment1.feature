#Author: jason.tokarski@capgemini.com
Feature: Flipkkart Login Functionality
    
  Scenario: Login with valid credentials
    Given User is on the login page
    When User enters email or phone number
    And User enters a password
    And User presses the login button
    Then Take user to welcome page
    And Display a welcome message
    
  Scenario: Login with invalid credentials
    Given User is on the login page
    When User enters email or phone number
    And  User enters password
    And User presses the login button
    Then Display invalid login message

