*** Settings ***
Resource         ../pageObjects/searchPageObject/searchPage.robot
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials


*** Test Cases ***
Valid Flight Number
    Verify User Is Logged In
    Click Search Button
    Input Flight Number
    Click Search Button On Flight Number Page

Invalid Flight Number
    Verify User Is Logged In
    Click Search Button
    Input Wrong Flight Number
    Click Search Button On Flight Number Page
    Verify Wrong Flight Number Input