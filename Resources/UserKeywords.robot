*** settings ***
Library  ../TestData/ReadData.py

*** keywords ***
Read Number of Rows
    [Arguments]  ${sheetname}
    ${maxr}=  fetch_number_of_rows  ${sheetname}
    [return]  ${maxr}

Read Excel Data of Cell
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${celldata}=  fetch_cell_data  ${sheetname}  ${row}  ${cell}
    [return]  ${celldata}