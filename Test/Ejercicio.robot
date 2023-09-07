*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${url}    file:///C:/Users/laa0304/OneDrive%20-%20Cencosud/Documentos/Experimentos/Contenido/Pagina/index.html
${navegador}    chrome


*** Test Cases ***
Validacion de campos usuario
    Hacer clic sobre el boton iniciar sesion

Hacer clic sobre el boton iniciar sesion dos
    Hacer clic sobre el boton iniciar sesion




*** Keywords ***
Hacer clic sobre el boton iniciar sesion
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa un usuario.

Hacer clic sobre el boton iniciar sesion dos
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa una contraseña.
