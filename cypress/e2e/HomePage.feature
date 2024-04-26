Feature: Home Page
    As a user
    I want to be able to log to the website
    So that I can see available icons and forms

    Scenario: 5 social media icons are enable
        Given I am on the Home page
        Then 5 social icons are enable

    Scenario: Registration form is opened after click on Sign Up button
        Given I am on the Home page
        When I click on Sign Up button
        Then I should see registration form

    Scenario: Login form is opened after click on Sign In button
        Given I am on the Home page
        When I click on Login button
        Then I should see login form