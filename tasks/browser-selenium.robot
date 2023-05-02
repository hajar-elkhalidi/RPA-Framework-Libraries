*** Settings ***
Library    RPA.Browser.Selenium

*** Tasks ***
Verify Login
    Go to the website "Swag Labs"
    Type valid username    standard_user
    Type valid password    secret_sauce
    Click Login
    Verify Product page displayed

*** Keywords ***
Go to the website "Swag Labs"
    Open Available Browser   https://www.saucedemo.com/

Type valid username
    [Arguments]    ${username}
    Input Text    id=user-name    ${username}

Type valid password
    [Arguments]    ${password}
    Input Password    id=password    ${password}

Click Login
    Click Element    id=login-button

Verify Product page displayed
    Page Should Contain    Products