*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Usuario puede iniciar sesión con credenciales válidas
    Open Browser    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html    Edge
    Maximize Browser Window
    Login Page Should Be Open
    Input Text    username    user
    Input Password    password    password1
    Click Button    btnenviar
    Welcome Page Should Be Open
    Close Browser
    
*** Keywords ***
Login Page Should Be Open
    Wait Until Page Contains Element    id:username
    Wait Until Page Contains Element    id:password
    Wait Until Page Contains Element    id:btnenviar
    
Welcome Page Should Be Open
    Wait Until Page Contains Element    id:msjexito
