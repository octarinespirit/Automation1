*** Settings ***
Library  SeleniumLibrary
Library  Collections

Resource  C:/Automation1/Resources/resources1.robot

#Test Setup  Start Browser and Maximize
#Test Teardown  Close Browser Window
#Suite Setup  Before Each Test Suite
#Suite Teardown  After Each Test Suite

*** Variables ***
${Browser1}  Chrome
${Browser2}  Firefox
${URL1}  http://www.thetestingworld.com/testings
${URL2}  http://robotframework.org

*** Test Cases ***
Robot Fetch Data
    Concatenate Username and Password  Testing  World
    Start Browser and Maximize



*** Keywords ***

