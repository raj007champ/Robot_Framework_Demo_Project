*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  xpath://h1[@class="a-spacing-small"]
    Element Text Should Be  xpath://h1[@class="a-spacing-small"]  Sign in
