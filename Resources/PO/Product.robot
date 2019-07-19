*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to results

Add to Cart
    Sleep  5s
    Click Element  xpath=//input[@id="add-to-cart-button"]