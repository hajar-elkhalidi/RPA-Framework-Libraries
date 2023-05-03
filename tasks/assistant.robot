*** Settings ***
Library     RPA.Assistant
Library     RPA.Browser.Selenium


*** Tasks ***
Search Assistant
    [Tags]    gui
    Add heading    Let's GOOGLE it!
    Add Text Input    name=input    label=Google It:    default=cat
    Add Submit Buttons    Search
    ${result}=    Run dialog    title=GoogleIt    width=480    height=280
    Set Global Variable    ${result}
    IF    $result.submit == "Search"    Google IT!

*** Keywords ***
Google IT!
    Open Available Browser    https://www.google.com/search?q=${result.input}
    Maximize Browser Window
