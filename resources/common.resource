*** Settings ***
Library    Browser
Resource   variables.resource
Resource   pages/login_page.resource
Resource   pages/inventory_page.resource
Resource   pages/cart_checkout_page.resource

*** Keywords ***
Start Browser Session
    New Browser    browser=${BROWSER}    headless=${HEADLESS}

Open Fresh Context
    New Context    viewport=${VIEWPORT}

End Browser Session
    Close Browser

Login As Standard User
    Open Login Page
    Login With Credentials    ${STANDARD_USER}    ${PASSWORD}
    Inventory Page Should Be Visible
