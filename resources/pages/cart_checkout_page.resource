*** Settings ***
Resource    ../variables.resource

*** Keywords ***
Cart Page Should Be Visible
    Wait For Elements State    ${CART_TITLE}    visible
    ${title}=    Get Text    ${CART_TITLE}
    Should Be Equal    ${title}    ${YOUR_CART_TITLE}

Start Checkout
    Click    ${CHECKOUT_BUTTON}

Complete Checkout Information
    [Arguments]    ${first_name}    ${last_name}    ${zip_code}
    Wait For Elements State    ${CHECKOUT_FIRST_NAME}    visible
    Fill Text    ${CHECKOUT_FIRST_NAME}    ${first_name}
    Fill Text    ${CHECKOUT_LAST_NAME}    ${last_name}
    Fill Text    ${CHECKOUT_ZIP}    ${zip_code}
    Click    ${CONTINUE_BUTTON}

Checkout Overview Should Be Visible
    Wait For Elements State    ${CART_TITLE}    visible
    ${title}=    Get Text    ${CART_TITLE}
    Should Be Equal    ${title}    ${CHECKOUT_OVERVIEW_TITLE}

Finish Checkout
    Click    ${FINISH_BUTTON}

Order Confirmation Should Be Visible
    Wait For Elements State    ${CHECKOUT_COMPLETE_HEADER}    visible
    ${confirmation}=    Get Text    ${CHECKOUT_COMPLETE_HEADER}
    Should Be Equal    ${confirmation}    ${CHECKOUT_COMPLETE_TEXT}
