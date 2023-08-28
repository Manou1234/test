***settings***
library    Selenium2Library
library    String
library    BuiltIn



***Test case***
autogeneration de mail 
# input text    ${mail_adress}    jlassilllll@gmail.com
     ${random_string}    Generate Random String    10    [LOWER]
     ${email}    Catenate    ${random_string}@gmail.com
     Log    Random Email: ${email}