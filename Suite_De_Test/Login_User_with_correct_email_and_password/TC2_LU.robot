***settings***
Resource   ./funtion_LU/Function_LU.robot  
***test case***

test cas2:Login_User_with_correct_email_and_password

    Navigate to url
    Accédez à l'URL 'http://automationexercise.com'
    afficher message 
    Verify that home page is visible successfully
    Click on 'Signup / Login' button  
    Verify 'Login to your account' is visible
    enter mail 
    enter passssword
    click login button
    Verify that 'Logged in as username' is visible
    click 'Delete Account' button
    Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button 
    
