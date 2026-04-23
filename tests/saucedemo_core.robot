*** Settings ***
Documentation    Core end-to-end coverage for Saucedemo's highest-risk user paths.
Resource         ../resources/common.resource
Suite Setup      Start Browser Session
Suite Teardown   End Browser Session
Test Setup       Open Fresh Context
Test Teardown    Close Context

*** Test Cases ***
Valid User Can Login And See Inventory
    [Tags]    smoke    auth
    Open Login Page
    Login With Credentials    ${STANDARD_USER}    ${PASSWORD}
    Inventory Page Should Be Visible

Locked Out User Is Blocked From Login
    [Tags]    smoke    auth    negative
    Open Login Page
    Login With Credentials    ${LOCKED_USER}    ${PASSWORD}
    Error Message Should Contain    Sorry, this user has been locked out.

User Can Add Item To Cart
    [Tags]    smoke    cart
    Login As Standard User
    Add Backpack To Cart
    Backpack Should Be In Cart Badge

User Can Complete Checkout
    [Tags]    regression    checkout
    Login As Standard User
    Add Backpack To Cart
    Open Cart
    Cart Page Should Be Visible
    Start Checkout
    Complete Checkout Information    Jane    Doe    10001
    Checkout Overview Should Be Visible
    Finish Checkout
    Order Confirmation Should Be Visible

Product Sorting Affects Display Order
    [Tags]    regression    catalog
    Login As Standard User
    Sort Products By    za
    First Product Name Should Be    Test.allTheThings() T-Shirt (Red)

User Can Logout From Inventory
    [Tags]    regression    auth
    Login As Standard User
    Logout From App
    Wait For Elements State    ${LOGIN_BUTTON}    visible
