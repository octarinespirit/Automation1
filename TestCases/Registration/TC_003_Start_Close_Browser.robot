*** Settings ***
Library  SeleniumLibrary
Library  Collections

Resource  C:/Automation1/Resources/resources1.robot

Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite

*** Variables ***


*** Test Cases ***
Testikeissi1
    [Tags]  Sanity
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  testing@testing.com
    Input Text  name:fld_password  abc



*** Keywords ***

