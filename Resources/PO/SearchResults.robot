*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  result for "${SEARCH_TERM}"

Click Product Link
      [Documentation]  Clicks on the first product in the search results list
      Click Link   xpath:(//*[@id="result_2"]//a)[2]
