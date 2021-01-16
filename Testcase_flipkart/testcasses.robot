*** Settings ***
Library      SeleniumLibrary
Resource  ../Operations/code.robot
Resource  ../Operations/variables.robot


*** Test Cases ***
Flipkart online shopping

    [Tags]    sanity
    Open flipkart website
    Enter credentials
    Click on Electronics
    Add to cart