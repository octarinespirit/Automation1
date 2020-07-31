*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***
${Browser1}  Chrome
${Browser2}  Firefox
${URL1}  http://www.thetestingworld.com/testings
${URL2}  http://www.thetestingworld.com


*** Keywords ***
Create Folder At Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    Log  "Task done successfully"

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concetenate_two_values  ${username}  ${password}'
    Log  ${resultval}

Start Browser and Maximize
    [Arguments]  ${URL1}  ${Browser1}
    Open Browser  ${URL1}  ${Browser1}
    Maximize Browser Window
    ${Title}=  Get Title
    [Return]  ${Title}

Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser

Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suite
