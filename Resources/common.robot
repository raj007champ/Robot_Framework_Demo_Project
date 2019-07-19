*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    #Setting a local Variable to Keyword
    #${BROWSER} =  Set Variable  firefox
    Open Browser  about:blank  ${BROWSER}
End Web Test
    Close Browser