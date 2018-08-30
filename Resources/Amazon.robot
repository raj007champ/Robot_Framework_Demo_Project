*** Settings ***
Library  SeleniumLibrary
Resource   C:/development/robot-scripts/Amazon-Keyword/Resources/PO/LandingPage.robot
Resource   C:/development/robot-scripts/Amazon-Keyword/Resources/PO/TopNav.robot
Resource   C:/development/robot-scripts/Amazon-Keyword/Resources/PO/SearchResults.robot
Resource   C:/development/robot-scripts/Amazon-Keyword/Resources/PO/Product.robot
Resource   C:/development/robot-scripts/Amazon-Keyword/Resources/PO/Cart.robot
Resource   C:/development/robot-scripts/Amazon-Keyword/Resources/PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded