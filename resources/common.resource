*** Settings ***
Library    Browser
Resource   pages/login_page.resource
Resource   pages/inventory_page.resource
Resource   pages/cart_checkout_page.resource

*** Variables ***
${BROWSER}         chromium
${HEADLESS}        ${TRUE}
${STANDARD_USER}   standard_user
${LOCKED_USER}     locked_out_user
${PASSWORD}        secret_sauce

*** Keywords ***
Start Browser Session
    New Browser    browser=${BROWSER}    headless=${HEADLESS}

Open Fresh Context
    New Context    viewport={"width": 1280, "height": 720}

End Browser Session
    Close Browser

Login As Standard User
    Open Login Page
    Login With Credentials    ${STANDARD_USER}    ${PASSWORD}
    Inventory Page Should Be Visible
