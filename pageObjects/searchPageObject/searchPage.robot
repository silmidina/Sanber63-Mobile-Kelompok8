*** Settings ***


*** Keywords ***

Click Search Button
    Click Element       locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]


Input Flight Number
    Wait Until Element Is Visible         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]   
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]        
    ...    text=DA935

Input Wrong Flight Number
    Wait Until Element Is Visible         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]   
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]        
    ...    text=123456

Click Search Button On Flight Number Page
    Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify Wrong Flight Number Input
    Wait Until Element Is Visible        //android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]