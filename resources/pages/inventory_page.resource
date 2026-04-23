*** Settings ***
Resource    ../variables.resource

*** Keywords ***
Inventory Page Should Be Visible
    Wait For Elements State    ${INVENTORY_TITLE}    visible
    ${title}=    Get Text    ${INVENTORY_TITLE}
    Should Be Equal    ${title}    ${INVENTORY_TITLE_TEXT}

Sort Products By
    [Arguments]    ${value}
    Select Options By    ${SORT_DROPDOWN}    value    ${value}

First Product Name Should Be
    [Arguments]    ${expected}
    Wait For Elements State    ${ITEM_NAME_FIRST}    visible
    ${name}=    Get Text    ${ITEM_NAME_FIRST}
    Should Be Equal    ${name}    ${expected}

Add Backpack To Cart
    Click    ${ADD_BACKPACK_BUTTON}
    Wait For Elements State    ${REMOVE_BACKPACK_BUTTON}    visible

Backpack Should Be In Cart Badge
    Wait For Elements State    ${CART_BADGE}    visible
    ${badge}=    Get Text    ${CART_BADGE}
    Should Be Equal    ${badge}    ${CART_BADGE_COUNT}

Open Cart
    Click    ${CART_LINK}

Logout From App
    Click    ${MENU_BUTTON}
    Wait For Elements State    ${LOGOUT_LINK}    visible
    Click    ${LOGOUT_LINK}
