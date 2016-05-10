*** Settings ***

Documentation  This is the resource file containing all methods based on login page
Library        Selenium2Library


*** Variables ***




*** Keywords ***

Login as Admin
    input text  login  renat.kulalov
    input text  tl_password  renat123

Open Browser To Login Page
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
    Title Should Be  TestLink

Submit Credentials
    Click Button  login_submit
