*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_KEYWORD}"

Click Product Link
      [Documentation]  Clicks on the first product in the search results list
      Click Link  //*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[8]/div/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a
