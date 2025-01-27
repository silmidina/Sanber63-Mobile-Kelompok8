*** Settings ***
Resource                ../base/base.robot
Variables               book-oneway-locators.yaml

*** Keywords ***

Text View One Way
    [Arguments]      ${text_oneway}
    Wait Until Element Is Visible    ${text_oneway}
    Click Element    ${text_oneway}

Select From City
    [Arguments]      ${from_city}
    Click Element    ${fromCity_spinner_bookPage}
    Wait Until Element Is Visible    ${from_city}
    Click Element    ${from_city}

Select To City
    [Arguments]      ${to_city}
    Click Element    ${toCity_spinner_bookPage}
    Wait Until Element Is Visible    ${to_city}
    Click Element    ${to_city}

Select Class
    [Arguments]      ${class}
    Click Element    ${class_spinner_bookPage}
    Wait Until Element Is Visible    ${class}
    Click Element    ${class}

Select Start Date
    [Arguments]      ${start_date}
    Click Element    ${startDate_datePicker_bookPage}
    Wait Until Element Is Visible    ${date_picker_header_year}
    Click Element                    ${date_picker_header_year}
    Wait Until Element Is Visible    ${year_start_date} 
    Click Element                    ${year_start_date} 
    Wait Until Element Is Visible    ${start_date}
    Click Element    ${start_date}
    Click Element    ${ok_datePicker_bookPage}

Select End Date
    [Arguments]      ${end_date}
    Click Element    ${endDate_datePicker_bookPage}
    Wait Until Element Is Visible    ${date_picker_header_year}
    Click Element                    ${date_picker_header_year}
    Wait Until Element Is Visible    ${year_end_date} 
    Click Element                    ${year_end_date}
    Wait Until Element Is Visible    ${end_date}
    Click Element    ${end_date}
    Click Element    ${ok_datePicker_bookPage}

Select Options Flight
    [Arguments]      ${option}
    Click Element    ${option}

Click Checkbox Day
    Wait Until Element Is Visible    ${checkBoxDay}
    Click Element                    ${checkBoxDay} 

Click Book Button
    Click Element    ${book_button_bookPage}


Book Flight
    [Arguments]      ${text_oneway}    ${from_city}    ${to_city}    ${class}    ${start_date}    ${end_date}    ${option}
    Text View One Way                          ${text_oneway}
    Select From City                           ${from_city}
    Select To City                             ${to_city}
    Select Class                               ${class}
    Select Start Date                          ${start_date}
    Select End Date                            ${end_date}
    Select Options Flight                      ${option}
    Click Checkbox Day
    Click Book Button

Book Flight1
    [Arguments]      ${text_oneway}    ${from_city}    ${to_city}    ${class}    
    Text View One Way                          ${text_oneway}
    Select From City                           ${from_city}
    Select To City                             ${to_city}
    Select Class                               ${class}
    Click Book Button

Book Flight2
    [Arguments]      ${text_oneway}    
    Text View One Way                          ${text_oneway}
    Click Book Button
    



   