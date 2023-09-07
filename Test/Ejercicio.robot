*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${url}    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html
${navegador}    edge


*** Test Cases ***
Validacion de campos
    Abrir el navegador con al direccion correcta
    Hacer clic sobre el boton iniciar sesion

Hacer clic sobre el boton iniciar sesion dos
    Hacer clic sobre el boton iniciar sesion




*** Keywords ***
Abrir el navegador con al direccion correcta
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Set Selenium Implicit Wait    10

Hacer clic sobre el boton iniciar sesion
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa un usuario.

Hacer clic sobre el boton iniciar sesion dos
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa una contraseña.
