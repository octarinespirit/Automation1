*** settings ***
Library  SeleniumLibrary
Resource  ../../Resources/resources1.robot
Resource  ../../Resources/UserKeywords.robot

*** variables ***



*** test cases ***
Data Test
    Start Browser and Maximize  ${URL2}  ${Browser1}
    Click Element  xpath://a[text()='Login']

    ${row}=  Read Number of Rows  Sheet1

    FOR  $(i)  IN RANGE  1  ${row}+1
         ${username}=  Read Excel Data of Cell  Sheet1  $(i)  1
         ${password}=  Read Excel Data of Cell  Sheet1  $(i)  2
         Input Text  id:username  ${username}
         Input Text  id:password  ${password}
         Click Button  xpath://button[@type='submit']
         Sleep  4 seconds
    END