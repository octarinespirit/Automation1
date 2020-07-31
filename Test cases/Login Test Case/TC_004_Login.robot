*** settings ***
Library  SeleniumLibrary


*** variables ***




*** test cases ***
TC_004_Login
    Open Browser    https://thetestingworld.com/testings/    Chrome
    Input Text    //input[@name="fld_username"]    joppe
    Input Text    //input[@name="fld_email"]    joppelainen@gmail.com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
    Click Link    xpath=(//a[@href="#"])[16]
    Input Text    //input[@name="phone"]    329739223
    Input Text    //input[@name="address"]    dnDPCACMEW
    Select From List By Value    //select[@name="sex"]    2
    Click Element    //input[@name="add_type"]
    Select From List By Value    //select[@name="country"]    15
    Select From List By Value    //select[@name="state"]    304
    Select From List By Value    //select[@name="city"]    7211
    Input Text    //input[@name="zip"]    441
    Click Element    //input[@name="terms"]
    Click Element    xpath=(//input)[14]