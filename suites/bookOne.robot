*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookPageObject/bookOneway.robot
Resource         ../pageObjects/confirmPageObject/confirmPage.robot
Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials
Test Teardown    Close Flight Application

*** Test Cases ***
User should be able to book one way - success
    Verify User Is Logged In
    Click Book Button on Home Page
    # Book One Way First Class Flight 1 Day From Chicago to Paris 03 August 2023 to 21 August 2025
    Book Flight        //android.widget.TextView[@text="ONE WAY"]    
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]    
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]       
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="First"]
    ...                //android.view.View[@content-desc="03 Agustus 2023"]     
    ...                //android.view.View[@content-desc="21 Agustus 2025"]  
    ...                //android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
    # Select $1860 price and confirm booking
    Confirm Booking    //android.widget.Button[@resource-id="com.example.myapplication:id/price1"]
    Verify Flight Is Booked

User should see validation errors when required fields are empty
    Verify User Is Logged In
    Click Book Button on Home Page
    # Book One Way First Class Flight 1 Day From Chicago to Paris 03 August 2023 to 21 August 2025
    Book Flight1        //android.widget.TextView[@text="ONE WAY"]    
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]    
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]       
    ...                //android.widget.TextView[@resource-id="android:id/text1" and @text="First"]
    
User should see validation errors when all fields are empty
    Verify User Is Logged In
    Click Book Button on Home Page
    # Book One Way First Class Flight 1 Day From Chicago to Paris 03 August 2023 to 21 August 2025
    Book Flight2        //android.widget.TextView[@text="ONE WAY"]    
    

