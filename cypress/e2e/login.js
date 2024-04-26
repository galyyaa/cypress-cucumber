import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('I am on the Login Page', () => {
    cy.visit('https://qauto.forstudy.space', {
        auth: {
            username: 'guest',
            password: 'welcome2qauto'
        }
    })
})

When('I click on SignIn button', () => {
    cy.get('.header_signin').click();
});

When('I enter {string} email', (name) => {
    cy.get('#signinEmail').type(name);
});

When('I enter {string} password', (pass) => {
    cy.get('#signinPassword').type(pass);
});

When('I click Login button', () => {
    cy.contains('Login').click();
});

Then('I should be on the Garage page', () => {
    cy.url().should('include', '/panel/garage');
});

Then('I should see a disabled button', () => {
    cy.get('.btn.btn-primary').should('be.disabled');
});

Then('I should see an error message {string}', (expectedText) => {
    cy.get('.alert.alert-danger').should('be.visible').and('contain', expectedText);
});


