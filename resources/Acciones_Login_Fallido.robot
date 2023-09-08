*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${url}    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html
${navegador}    edge



*** Keywords ***
Ingresar a la url del portal para verificacion de credenciales actuales
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Set Selenium Speed    3s

Verificar que el campo usuario sea obligatorio
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa un usuario.
    Input Text    username    user

Verificar que el campo contraseña sea obligatorio
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa una contraseña.
    Input Password    password    password1

Hacer clic sobre el boton iniciar sesion
    Click Button    btnenviar
    Page Should Contain    Usuario y/o contraseña incorrectos.
    
    


