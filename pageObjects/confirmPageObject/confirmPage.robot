*** Settings ***
Resource                ../base/base.robot
Variables               confirmpage_locators.yaml

*** Keywords ***
Select Price
    [Arguments]    ${price}
    Wait Until Element Is Visible    ${price}
    Click Element    ${price}

Click Confirm Button
    Click Element    ${confirm_button_confirmPage}

Verify Flight Is Booked
    Wait Until Element Is Visible    ${success_message_confirmPage}

Confirm Booking
    [Arguments]    ${price}
    Select Price    ${price}
    Click Confirm Button
