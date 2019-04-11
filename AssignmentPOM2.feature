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

  Scenario Outline: User enters data into the registration form
    Given User is on "ConferenceRegistration.html"
    When User enters text into the "<a>" box
    And The user presses "Next"
    Then Continue execution of the page

    Examples: 
      | a                   |
      | first name          |
      | last name           |
      | email               |
      | contact number      |
      | no people attending |

  Scenario Outline: User leaves an input field blank
    Given User is on "ConferenceRegistration.html"
    When The "<a>" box is is empty
    And The user presses "Next"
    Then Display "<b>"
    And Stop execution

    Examples: 
      | a                   | b                              |
      | first name          | Please fill the First Name     |
      | last name           | Please fill the Last Name      |
      | email               | Please fill the email          |
      | contact number      | Please fill the contact number |
      | no people attending | Alert with no people attending |

  Scenario: User registers with incorrect contact format
    Given User is on the "ConferenceRegistration.html"
    When The contact number text box has an invalid format
    And The user presses "Next"
    Then Display "Please enter valid Contact number"
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
