*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    #Setting a local Variable to Keyword
    ${BROWSER} =  Set Variable  firefox
    Open Browser  about:blank  ${BROWSER}
End Web Test
    Close Browser

Insert Date Base
    Custom Keyword 1
    #That means we can include keywords inside keywords
    Custom Keyword 2

Delete Data Base
    Log  Deleting data base keyword

Custom Keyword 1
    Log  Custom Keyword 1
Custom Keyword 2
    Log  Custom Keyword 2