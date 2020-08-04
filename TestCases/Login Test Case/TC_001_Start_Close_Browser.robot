*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  ../../ExternalKeywords/Locators.py

Resource  C:/Automation1/Resources/resources1.robot

#Test Setup  Start Browser and Maximize
#Test Teardown  Close Browser Window
#Suite Setup  Before Each Test Suite
#Suite Teardown  After Each Test Suite

*** Variables ***


*** Test Cases ***
Robot First Test Case
    [Tags]  Smoke
    [Arguments]  ${username}  ${email}  ${password}
    Start Browser and Maximize  ${URL1}  ${Browser1}
    ${username}=  Read Element Locator  Registration.username_textbox_name
    ${email}=  Read Element Locator  Registration.email_textbox_name
    ${password}=  Read Element Locator  Registration.password_textbox_name
    Input Text  name:${username}  Testing
    Input Text  name:${email}  testing@testing.com
    Input Text  name:${password}  abc




#    ${Res}=  Start Browser and Maximize  ${URL1}  ${Browser1}
#    Log  ${Res}
#    Input Text  name:fld_username  ${Res}



*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [return]  ${result}
