*** Settings ***
Documentation    Preparacion de las acciones necesarias para automatizar un login
Library      SeleniumLibrary

*** Variables ***
${url}    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html
${navegador}    edge



*** Keywords ***
Ingresar a la url del portal para verificacion de credenciales actuales
    [Documentation]    Esta secion contiene la informacion de la url del protal al cual se valida de informacion del usuario
    [Tags]    Login_portal
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Set Selenium Implicit Wait    1.5s
    Set Selenium Speed    .9s

Verificar que el campo usuario sea obligatorio
    [Documentation]    Esta seccion esta diseñada para validar la obligatoridad del campo usuario
    [Tags]    portal_user
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa un usuario.
    Input Text    username    userqw

Verificar que el campo contraseña sea obligatorio
    [Documentation]    Esta seccion esta diseñada para validar la obligatoriedad del campo contrasñea
    [Tags]    portal_pass
    Click Button    btnenviar
    Page Should Contain    Por favor, ingresa una contraseña.
    Input Password    password    password13543

Hacer clic en el boton iniciar sesion
    [Documentation]    Esta seccion esta diseñada pára enviar la informacion del cliente
    [Tags]    portal_valida
    Click Button    btnenviar
    Page Should Contain    Usuario y/o contraseña incorrectos.
    
    


