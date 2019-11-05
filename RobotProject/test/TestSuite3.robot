*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
SampleLoginTest
    [Documentation]    This is Login Test
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    LoginKW
    Click Element    id=welcome
    Wait Until Keyword Succeeds    60 seconds    15 seconds
    ...    Click Element    link=Logout    
    Sleep    5    
    Close Browser
    Log    Test Completed   
    Log    This Test was executed by %{username} in %{os}
                      
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGIN_DATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGIN_DATA}[password]
    Click Button    id=btnLogin