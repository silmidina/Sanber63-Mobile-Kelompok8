*** Settings ***
Resource                ../base/base.robot

Variables               bookpage_locators.yaml

*** Keywords ***
Select One Way/Round Trip Tab
    [Arguments]      ${tab}
    Wait Until Element Is Visible    ${tab}
    Click Element    ${tab}

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
    Wait Until Element Is Visible    ${start_date}
    Click Element    ${start_date}
    Click Element    ${ok_datePicker_bookPage}

Select End Date
    [Arguments]      ${end_date}
    Click Element    ${endDate_datePicker_bookPage}
    Wait Until Element Is Visible    ${end_date}
    Click Element    ${end_date}
    Click Element    ${ok_datePicker_bookPage}

Select Options (Flight or Flight+Hotel)
    [Arguments]      ${option}
    Click Element    ${option} 

Click Book Button
    Click Element    ${book_button_bookPage}

Book Flight
    [Arguments]      ${tab}    ${from_city}    ${to_city}    ${class}    ${start_date}    ${end_date}    ${option}
    Select One Way/Round Trip Tab              ${tab}
    Select From City                           ${from_city}
    Select To City                             ${to_city}
    Select Class                               ${class}
    Select Start Date                          ${start_date}
    Select End Date                            ${end_date}
    Select Options (Flight or Flight+Hotel)    ${option}
    Click Book Button



   