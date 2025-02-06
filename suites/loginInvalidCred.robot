*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/loginPageObject/invalidLogin.robot


# Test Setup       Run Keywords    
# ...              Open Flight Application 
# ...              Login With Invalid Credentials
# ...              Verify Valid Credentials
# Test Teardown    Close Flight Application
# Test Teardown    Verify Valid Credentials

# *** Variables ***
# ${VALID_EMAIL}               support@ngendigital.com
# ${VALID_PASSWORD}            abc123

*** Test Cases ***
User Login Without Credentials
    Run Keyword        Open Flight Application
                       Login Without Credentials
                       Verify Valid Credentials
                       Close Flight Application

User Login Without Email
    Run Keyword        Open Flight Application
                       Login Without Email
                       Verify Valid Credentials
                       Close Flight Application

User Login Without Password
    Run Keyword        Open Flight Application
                       Login Without Password
                       Verify Valid Credentials
                       Close Flight Application

User Login With Invalid Format Email
    Run Keyword        Open Flight Application
                       Login With Invalid Format Email
                       Verify Valid Credentials
                       Close Flight Application

User Login With Invalid Credentials
    Run Keyword        Open Flight Application
                       Login With Invalid Credentials
                       Verify Valid Credentials
                       Close Flight Application