*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id:twotabsearchtextbox  ${SEARCH_KEYWORD}

Submit Search
    Click Button  xpath://*[@id="nav-search"]/form/div[2]/div/input