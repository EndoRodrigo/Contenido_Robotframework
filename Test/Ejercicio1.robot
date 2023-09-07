*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library        SeleniumLibrary

*** Variables ***
${LOGIN URL}      file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/Pagina/index.html
${BROWSER}        edge

*** Test Cases ***
Valid Login de login con credenciales correctas
    Open Browser To Login Page
    Input Username    user
    Input Password    password1
    Submit Credentials
    Welcome Page Should Be Open
    #[Teardown]    Close Browser


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login
    Set Selenium Implicit Wait    10 
    Set Selenium Speed    5
    

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text     password   ${password}

Submit Credentials
    Click Button    btnenviar
    Sleep    3s

Welcome Page Should Be Open
    ${respuesta}    Get Text    xpath=/html/body/h1
    Should Be Equal As Strings   ${respuesta}     login realizado con exito