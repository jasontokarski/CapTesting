#Author: jason.tokarski@capgemini.com
Feature: Conference registration

  Scenario: Page title is incorrect
    Given User has opened "ConferenceRegistration.html"
    When Conference Registration title is not "Conference Registration"
    Then Stop execution of the page


  Scenario: Page title is correct
    Given User has opened "ConferenceRegistration.html"
    When Conference Registration title is "Conference Registration"
    Then Continue execution of the page


  Scenario: Page heading is incorrect
    Given Title has been verified
    When Heading is not "Step 1: Personal Details"
    Then Stop execution of the page


  Scenario: Page heading is correct
    Given Title has been verified
    When Heading is "Step 1: Personal Details"
    Then Continue execution of the page


  Scenario: User registers with first name
    Given User is on "ConferenceRegistration.html"
    When The first name box is not empty
    And The user presses "Next"
    Then Continue execution of the page


  Scenario: User registers without first name
    Given User is on "ConferenceRegistration.html"
    When The first name box is is empty
    And The user presses "Next"
    Then Display "Please fill the First Name"
    And Stop execution


  Scenario: User registers with last name
    Given User is on "ConferenceRegistration.html"
    When The last name box is not empty
    And The user presses "Next"
    Then Continue execution of the page


  Scenario: User registers without last name
    Given User is on "ConferenceRegistration.html"
    When The first name box is is empty
    And The user presses "Next"
    Then Display "Please fill the Last Name"
    And Stop execution


  Scenario: User registers with email
    Given User is on "ConferenceRegistration.html"
    When The email box contains an email
    And The email is a valid format
    And The user presses "Next"
    Then Continue execution of the page


  Scenario: User registers without email
    Given User is on "ConferenceRegistration.html"
    When The email box is empty
    And The user presses "Next"
    Then Display "Please fill the Email"
    And Stop execution


  Scenario: User registers with contact number
    Given User is on "ConferenceRegistration.html"
    When The contact number textbox contains text
    And The user presses "Next"
    Then Continue execution of the page


  Scenario: User registers without contact number
    Given User is on "ConferenceRegistration.html"
    When The contact number text box is empty
    And The user presses "Next"
    Then Display "Please fill the Contact Number"
    And Stop execution


  Scenario: User registers with incorrect contact format
    Given User is on the "ConferenceRegistration.html"
    When The contact number text box has an invalid format
    And The user presses "Next"
    Then Display "Please enter valid Contact number"
    And Stop execution


  Scenario: User registers with number of people attending
    Given User is on "ConferenceRegistration.html"
    When The number of people attending contains text
    And The user presses "Next"
    Then Continue execution of the page


  Scenario: User registers without number of people attending
    Given User is on "ConferenceRegistration.html"
    When The number of people attending box is empty
    And The user presses "Next"
    Then Alert with "Number of people attending"
    And Stop execution


  Scenario: User registers with location information
    Given User is on "ConferenceRegistration.html"
    When Street Address is selected
    And City is selected
    And State is selected
    And Conference full-Access is selected
    And The user presses "Next"
    Then Display message "Personal details are validated"
    And Navigate the user to the page "PaymentDetails.html"


  Scenario: User registers with payment information
    Given User is on "PaymentDetails.html"
    When First name is selected
    And Last name is selected
    And Debit card number is selected
    And CVV is selected
    And Expiration month is selected
    And Expiration year is selected
    And Used clicks the "Register button"
    Then Display the alert box messge "Registration Successful"

