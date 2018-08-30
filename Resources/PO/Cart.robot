*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart
Proceed to Checkout
    Click Link  xpath://*[@id="hlb-ptc-btn-native"]
    Page Should Contain Element  xpath://h1[@class="a-spacing-small"]