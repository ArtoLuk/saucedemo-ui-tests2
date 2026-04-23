*** Variables ***
${URL}                      https://www.saucedemo.com/
${USERNAME_INPUT}           css=[data-test="username"]
${PASSWORD_INPUT}           css=[data-test="password"]
${LOGIN_BUTTON}             css=[data-test="login-button"]
${ERROR_MESSAGE}            css=[data-test="error"]

*** Keywords ***
Open Login Page
    New Page    ${URL}
    Wait For Elements State    ${USERNAME_INPUT}    visible

Login With Credentials
    [Arguments]    ${username}    ${password}
    Fill Text    ${USERNAME_INPUT}    ${username}
    Fill Text    ${PASSWORD_INPUT}    ${password}
    Click    ${LOGIN_BUTTON}

Error Message Should Contain
    [Arguments]    ${expected_text}
    Wait For Elements State    ${ERROR_MESSAGE}    visible
    ${actual}=    Get Text    ${ERROR_MESSAGE}
    Should Contain    ${actual}    ${expected_text}
