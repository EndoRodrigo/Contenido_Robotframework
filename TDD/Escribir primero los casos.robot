*** Settings ***
Library    MyLibrary

*** Test Cases ***
Test Sum Function
    [Documentation]    Test the sum function
    ${result}    Sum    2    3
    Should Be Equal As Integers    ${result}    5
