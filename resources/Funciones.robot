*** Settings ***
Library      SeleniumLibrary
Documentation    Se crea funciones para trabajar con campos especificos de los formularios y no generar codigo repedito


*** Keywords ***
f_navegador
    [Arguments]    ${url}    ${navegador}
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Set Selenium Implicit Wait    1.5s
    Set Selenium Speed    .9s

f_txt
    [Arguments]    ${self}    ${dato}
    Wait Until Element Is Visible    ${self}
    Wait Until Element Is Enabled    ${self}
    Element Should Be Visible    ${self}
    Execute Javascript    window.scroll(0,20)
    Input Text    ${self}    ${dato}

f_pass
    [Arguments]    ${self}    ${dato}
    Wait Until Element Is Visible    ${self}
    Wait Until Element Is Enabled    ${self}
    Element Should Be Visible    ${self}
    Input Password    ${self}    ${dato}

f_buton
    [Arguments]    ${self}
    Wait Until Element Is Visible    ${self}
    Wait Until Element Is Enabled    ${self}
    Element Should Be Visible    ${self}
    Click Button    ${self}

