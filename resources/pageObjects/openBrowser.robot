*** Settings ***

Documentation  This is the resource file containing all methods based on login page
Library        Selenium2Library


*** Variables ***




*** Keywords ***

Sign in
    wait until page contains element  //a[@class="login"]
    click element  //a[@class="login"]
    wait until page contains element  username
    wait until page contains element  password
    input text  username  ${username}
    input text  password  ${password}

Open Browser To Login Page
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
    Title Should Be  Redmine demo

Submit Credentials
    wait until page contains element  login
    Click Button  login

Check user was logged in
    wait until page contains  Logged in as ${username}
    wait until page contains element  //a[@class="user active"][contains(text(),"${username}")]
    page should contain  Logged in as ${username}
    page should contain element  //a[@class="user active"][contains(text(),"${username}")]
