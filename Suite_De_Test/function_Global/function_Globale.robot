***settings***
Library    Selenium2Library
Library    Library   OperatingSystem
library    CSVLibrary
Resource    ../Config_Global/Config_Global.robot

***keywords***
Navigate to url
    Open Browser    about:blank    chrome
Accédez à l'URL 'http://automationexercise.com'
     Go To    ${url}   
Call Generic Fill Field
    [Arguments]    ${xpath}    ${value}
    Input Text    ${xpath}    ${value}
Verify that home page is visible successfully   
    wait until element is visible    ${bouton_login_seconnecter}   
Click on 'Signup / Login' button
    click link    ${bouton_login_seconnecter}     
Click 'Delete Account' button
    click link    //a[@href="/delete_account"]
Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button        
    wait until element is visible    //section[@id="form"]
    click link    //a[@data-qa="continue-button"]

    
    