*** Settings ***
Documentation     A test suite with a single test for Login & Sign Up Forms
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Login & Sign Up Forms test
    Open Browser    https://thetestingworld.com/testings/    ${BROWSER}
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

    Close Browser