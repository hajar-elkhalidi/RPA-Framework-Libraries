*** Settings ***
Library    RPA.Browser.Playwright

*** Tasks ***
Verify Login
    Go to the website "Swag Labs"
    Type valid username    standard_user
    Type valid password    secret_sauce
    Click Login
    Verify Products page displayed

*** Keywords ***
Go to the website "Swag Labs"
    New Page   https://www.saucedemo.com/

Type valid username
    [Arguments]    ${username}
    Type Text    id=user-name    ${username}

Type valid password
    [Arguments]    ${password}
    Type Secret    id=password    $password

Click Login
    Click    id=login-button

Verify Products page displayed
    ${title}=    Get Text    xpath=//*[@id="header_container"]/div[2]/span
    Should Be Equal As Strings    ${title}    Products