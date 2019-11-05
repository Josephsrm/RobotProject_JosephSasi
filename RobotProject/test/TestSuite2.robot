*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***

FirstSeleniumTest
    Open Browser    https://google.com    chrome   
    Set Browser Implicit Wait    5 
    Input Text      name=q                Automation Step by Step
    Press Keys      name=q    ENTER
   # Click Button    name=btnK    
    Sleep    5    
    Close Browser
    Log    Test Completed    