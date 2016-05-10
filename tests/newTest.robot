*** Settings ***
Documentation  A test case for succesful login as admin with correct login info
Resource       ../resources/pageObjects/openBrowser.robot

Test Teardown  close browser

*** Variables ***
${SERVER}        testlab.tesena.com/testlink
${DELAY}         0
${LOGIN URL}     http://${SERVER}/login.php
${WELCOME URL}   http://${SERVER}/index.php?caller=login
${ERROR URL}     http://${SERVER}/login.php
${BROWSER}      ff

*** Test Cases ***

Try it
    openBrowser.Open Browser To Login Page
    openBrowser.Login as Admin
    openBrowser.Submit Credentials