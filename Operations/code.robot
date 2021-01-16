*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../operations/code.robot
Resource  ../Operations/variables.robot


*** Keywords ***
Open flipkart website
    Open Browser  ${website_URL}  ${browser}   
    Maximize Browser Window
    sleep  3s


Enter credentials
    input text  xpath://input[@class="_2IX_2- VJZDxU"]  8310410167
    sleep  1s
    input text  xpath://input[@class="_2IX_2- _3mctLh VJZDxU"]  test@123
    sleep  1s
    click element  xpath://button[@class="_2KpZ6l _2HKlqd _3AWRsL"]
    log to console  Logged in Successfully!!
    sleep  3s
    Verify the page title  ${home_title}
    Log to Console  home page title verified!
    sleep  2s


Click on Electronics
    click element  //span[text()="Electronics"]
    sleep  2s
    click element  //a[text()="Asus"]  
    sleep  2s
    Verify the page title  ${Asus_title}
    Log to Console  Asus page title verified!
    sleep  2s
    click element  ${selected device}
    sleep  3s
    select window   title=Asus ROG Phone 3 ( 128 GB Storage, 12 GB RAM ) Online at Best Price On Flipkart.com
    sleep  2s
    Verify the page title  ${new_title}
    log to console  routed page titile verified!
    sleep  3s


Add to cart
    click element  xpath=//button[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    sleep  3s
    ${response}    Get Text    //div[text()="My Cart (1)"]
    Should Be Equal As Strings    ${response}    My Cart (1)
    Log to Console  verified the cart!
    capture page screenshot
    sleep  5s
    close browser
   

Verify the page title
    [Arguments]  ${title} 
    wait until page contains  ${title} 
    Log to Console  title  verified!!
   





  
   
   








    
    
   
   
