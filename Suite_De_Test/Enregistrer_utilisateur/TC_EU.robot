***settings***
Resource    ./function_EU/function_EU.robot  

     
***Test case***
Test Case 1: Register User

    Navigate to url
    Accédez à l'URL 'http://automationexercise.com'
    # afficher message
    Verify that home page is visible successfully   
    Click on 'Signup / Login' button   
    Verify 'New User Signup!' is visible
    Enter name 
    Enter mail adress
    Click 'Signup' button
    Verify that ENTER ACCOUNT INFORMATION is visible
    Remplissez les détails : titre, nom, e-mail, mot de passe, date de naissance
    Select checkbox 'Sign up for our newsletter!'
    Select checkbox 'Receive special offers from our partners!'
    Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Click 'Create Account button'  
    Verify that 'ACCOUNT CREATED!' is visible
    Click 'Continue' button
    Verify that 'Logged in as username' is visible
    # click 'Delete Account' button
    # verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button 


    