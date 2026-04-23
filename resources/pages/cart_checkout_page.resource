*** Variables ***
${CART_TITLE}                    css=[data-test="title"]
${CHECKOUT_BUTTON}               css=[data-test="checkout"]
${CHECKOUT_FIRST_NAME}           css=[data-test="firstName"]
${CHECKOUT_LAST_NAME}            css=[data-test="lastName"]
${CHECKOUT_ZIP}                  css=[data-test="postalCode"]
${CONTINUE_BUTTON}               css=[data-test="continue"]
${FINISH_BUTTON}                 css=[data-test="finish"]
${CHECKOUT_COMPLETE_HEADER}      css=[data-test="complete-header"]
${CHECKOUT_COMPLETE_TEXT}        Thank you for your order!
${CHECKOUT_OVERVIEW_TITLE}       Checkout: Overview
${YOUR_CART_TITLE}               Your Cart

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
