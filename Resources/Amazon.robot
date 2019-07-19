*** Settings ***
Library  SeleniumLibrary
Resource   D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/PO/LandingPage.robot
Resource   D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/PO/TopNav.robot
Resource   D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/PO/SearchResults.robot
Resource   D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/PO/Product.robot
Resource   D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/PO/Cart.robot
Resource   D:/Avaya/Utility Projects/RobotFrameworkProjects/Robot_Framework_Demo_Project/Resources/PO/SignIn.robot

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