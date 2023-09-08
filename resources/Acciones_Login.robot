*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${url}    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html
${navegador}    edge



*** Keywords ***
Ingresar a la url del portal para verificacion de credenciales
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    3

Ingresar las la informacion del usuario
    Element Should Be Visible    username
    Element Should Be Enabled    username
    Input Password    username    user

Ingresar las la informacion del contraseña
    Element Should Be Visible    password
    Element Should Be Enabled    password
    Input Password    password    password1
    

Hacer clic sobre el boton iniciar sesion 
    Click Button    btnenviar
    Page Should Contain    login realizado con exito