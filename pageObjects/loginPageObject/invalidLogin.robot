*** Settings ***
Resource                ../base/base.robot
Resource                ../homePageObject/homePage.robot
Variables               loginpage_locators.yaml
# Library                 ../../.venv/Lib/site-packages/robot/libraries/OperatingSystem.py
Library                 AppiumLibrary

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_EMAIL}             admin@ngendigital.com
${INVALID_PASSWORD}          abc12345
${INVALID_FORMAT_EMAIL}      support@ngendigital

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Input User Email On Login Page
    [Arguments]   ${email}
    Input Text    ${email_input_loginPage}    ${email}

Input User Password On Login Page
    [Arguments]   ${password}
    Input Text    ${password_input_loginPage}    ${password}

Click Sign In Button On Login Page
    Click Element    ${signIn_button_loginPage}


Login With Invalid Password
     [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${INVALID_PASSWORD}
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login With Invalid Email
     [Arguments]    ${email}=${INVALID_EMAIL}    ${password}=${PASSWORD}
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login With Invalid Credentials
     [Arguments]    ${email}=${INVALID_EMAIL}    ${password}=${INVALID_PASSWORD}
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login Without Credentials 
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Click Sign In Button On Login Page

Login With Invalid Format Email
     [Arguments]    ${email}=${INVALID_FORMAT_EMAIL}    ${password}=${VALID_PASSWORD}
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login Without Password
     [Arguments]    ${email}=${INVALID_FORMAT_EMAIL}
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Click Sign In Button On Login Page

Login Without Email
     [Arguments]    ${password}=${VALID_PASSWORD}
     Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Verify Valid Credentials
    # Wait Until Element is Visible        ${toast_error_cred}
    Wait Until Element Is Visible    ${login_logo}