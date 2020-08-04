*** settings ***
Resource  ../../Resources/resources1.robot

*** variables ***


*** test cases ***
Test Case In BDD Format
    Given Start Browser and Maximize  ${URL1}  ${Browser1}
    When Create Folder at Runtime  ABCD  XYZM
    Then Concatenate Username and Password  Testing  World

