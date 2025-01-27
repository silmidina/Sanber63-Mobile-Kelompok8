*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookPageObject/bookPage.robot
Resource         ../pageObjects/confirmPageObject/confirmPage.robot
Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials
Test Teardown    Close Flight Application

*** Test Cases ***
User should be able to book round trip flight
    Verify User Is Logged In
    Click Book Button on Home Page
    # Book Round-Trip Business Class Flight From Toronto to Paris 4 August 2019 to 22 August 2019
    Book Flight        //android.support.v7.app.ActionBar.Tab[@content-desc="Round Trip"]    
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]    
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]        
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]
    ...                //android.view.View[@content-desc="04 August 2019"]    
    ...                //android.view.View[@content-desc="22 August 2019"] 
    ...                //android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
    # Select $1755 price and confirm booking
    Confirm Booking    //android.widget.Button[@resource-id="com.example.myapplication:id/price4"]
    Verify Flight Is Booked