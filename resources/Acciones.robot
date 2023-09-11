*** Settings ***
Documentation    Preparacion de las acciones necesarias para automatizar un login
Resource   Funciones.robot


*** Variables ***
${url}    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html
${navegador}    edge



*** Keywords ***
Ingresar a la url del portal para verificacion de credenciales actuales
    f_navegador    ${url}    ${navegador}

Verificar que el campo usuario sea obligatorio
    f_txt    username    user

Verificar que el campo contraseña sea obligatorio
    f_pass    password     password   

Hacer clic en el boton iniciar sesion
    f_buton    btnenviar


