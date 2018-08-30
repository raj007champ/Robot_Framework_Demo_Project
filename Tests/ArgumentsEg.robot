*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#@{URL_VARIABLES} =  http://www.amazon.com  ie

*** Test Cases ***
User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (ie, chrome, firefox, etc.)
    #Using list to create variable
    @{url_and_browser} =  Set Variable  http://www.amazon.com  ie
    Begin Web Test  @{url_and_browser}

*** Keywords ***
Begin Web Test
    [Arguments]  @{url_and_browser}
    Open Browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    Close Browser

#Running robot file using command line variable arguments-
#robot -d results -v BROWSER:ie -v SEARCH_TERM:"Ferrari 458" -i current tests/amazon.robot
#Current is tags, Browser is variable, " " used if variable is string