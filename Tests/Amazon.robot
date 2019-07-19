*** Settings ***
Resource  D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/Amazon.robot
Resource  D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/amazon.robot
*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.amazon.com
${SEARCH_KEYWORD} =  Apple MacBook

*** Test Cases ***
User must be able to search products
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke
    #[Arguments]  $[BROWSER]
    #To pass variable here use
    #{BROWSER_URL} =  Set Variable  ie
    Amazon.Search for Products

User must sign in to check out
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout