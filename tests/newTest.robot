*** Settings ***
Documentation  A test case for succesful login as admin with correct login info
Resource       ../resources/pageObjects/openBrowser.robot

Test Setup  Open Browser To Login Page

Test Teardown  close browser

*** Variables ***
${LOGIN URL}        http://demo.redmine.org/
${DELAY}            0
${BROWSER}          chrome
${username}         alexandra.kolpakova
${password}         alexandra123

*** Test Cases ***

Try it
    Sign in
    Submit Credentials
    Check user was logged in
