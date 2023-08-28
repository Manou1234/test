***settings***

Resource    ../config_LU/Config_LU.robot       
Resource    ../../function_Global/function_Globale.robot

***keywords***
afficher message 
    Display message    ${messgae_TC2}
Verify 'Login to your account' is visible
    wait until Element is visible    //div[@class="login-form"]
enter mail 
    input text   ${mail}    ${mail_login}
enter passssword
    input text    ${passssword}    ${mot_de_passe_login}
click login button
    click button    ${login_button}  
Verify that 'Logged in as username' is visible
    wait until Element is visible    ${loggin_as_mouna}  
    