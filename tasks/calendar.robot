*** Settings ***
Library    RPA.Calendar

*** Tasks ***
What time is it?
    ${time}=    Time Now    timezone=Africa/Casablanca
    Log To Console    ${time}    

Take a day off
    Add Custom Holidays    2024-02-16
    ${is_holiday}=    Is The Date Holiday    2024-02-16
    IF    ${is_holiday} == True
        Log To Console    happy birthday!    
    END  

Timezones Difference
    ${diff}=    Time Difference Between Timezones    America/New_York    Africa/Casablanca
    Log To Console    ${diff}    

Check Business day
    ${is_business_day}=    Is the 2023-02-16 Business Day in Morocco
    IF    ${is_business_day} == True
        Log To Console    Fighting!
    END 

Get Moroccan Holidays
    ${h}=    Return Holidays    2023    MA
    Log To Console    ${h}    