***settings***
library    String
library    BuiltIn
Resource    ../config_EU/Config_EU.robot    
Resource    ../../function_Global/function_Globale.robot
Resource    ../../Enregistrer_utilisateur/data.csv

***keywords***
afficher message
    Display Message    ${message_TC1}        
Verify 'New User Signup!' is visible
    wait until element is visible   ${visibilité_inscription}
Enter name 
    input text    ${user_name}    Mounaaaa
Enter mail adress
     ${random_string}    Generate Random String    10    [LOWER]
     ${email}    Catenate    ${random_string}@gmail.com
     Log    Random Email: ${email}
     input text    ${mail_adress}   ${email}       
    
Click 'Signup' button
    click button    ${bouton_signup}  
Verify that ENTER ACCOUNT INFORMATION is visible
    wait until element is visible    ${verify_account-information} 
Remplissez les détails : titre, nom, e-mail, mot de passe, date de naissance
    Click Element    //div[@id="uniform-id_gender2"]
    input Text    ${name}    mouna
    input text    ${mail}    jlassimouna@gmail.com
    Input Text    ${password}    mounasofrecom
    Select From List by Label     //select[@id="days"]    25
    Select From List by Label    //select[@id="months"]    April
    Select From List by Label    //select[@id="years"]    2003
Select checkbox 'Sign up for our newsletter!'
    click element    //input[@type="checkbox"]
Select checkbox 'Receive special offers from our partners!'
    click element    (//input[@type="checkbox"])[2]
Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number

    Open Browser    about:blank    chrome
    ${lines}=    Get File    data.csv
    :FOR    ${line}    IN    @{lines}
    \   ${data}=    Split String    ${line}    ${SEPARATOR}
    \   ${xpath}=    Set Variable    ${data[0]}
    \   ${value}=    Set Variable    ${data[1]}
    \   Call Generic Fill Field    ${xpath}    ${value}
    
# Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
#    input Text    ${first_name}    jlassimouna@gmail.com
#    input Text    ${last_name}    mouna 
#    input Text    ${company}    sofrecom 
#    input Text    ${adress}    paris
#    input Text    ${adress2}    quebec
   
#    input Text    ${state}    tunis
#    input Text    ${city}     nosken fi dar 
#    input Text    ${zipcode}    4567 
#    input Text    ${mobile_number}    123456789
Click 'Create Account button'   
   click button    //button[@type="submit"]
Verify that 'ACCOUNT CREATED!' is visible
    wait until Element is visible    //section[@id="form"]  
Click 'Continue' button
    click link    (//a[@href="/"])[3]  
Verify that 'Logged in as username' is visible
    wait until Element is visible     //div[@class="col-sm-8"]    
