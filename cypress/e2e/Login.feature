Feature: Login
    As a user
    I want to be able to log to the website
    So that I can access my account information

    Scenario: Successful login
        Given I am on the Login Page
        Then I click on SignIn button
        When I enter "morgun.galya22@gmail.com" email
        When I enter "Qwer1234" password
        When I click Login button
        Then I should be on the Garage page

    Scenario: Login with empty fields
        Given I am on the Login Page
        Then I click on SignIn button
        Then I should see a disabled Login button

    Scenario: Login with invalid email and password
        Given I am on the Login Page
        Then I click on SignIn button
        When I enter "test@gmail.com" email
        When I enter "Test1234" password
        When I click Login button
        Then I should see an error message "Wrong email or password"
