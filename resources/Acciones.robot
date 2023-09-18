*** Settings ***
Documentation    Preparacion de las acciones necesarias para automatizar un login
Resource   Funciones.robot


*** Variables ***
${url}    file:///C:/Users/endor/OneDrive/Documentos/RobotContenido/Contenido/pagina/index.html
${navegador}    edge



*** Keywords ***
Ingresar a la url del portal para verificacion de credenciales actuales
    f_navegador    ${url}    ${navegador}

Ingresa el nombre de usuario válido en el campo Usuario
    f_txt    username    user

Ingresa el nombre de usuario con caracteres no permetidos
    f_txt    username    user123123

Ingresa el nombre de usuario válido en el campo Contraseña
    f_pass    password     password1  

Ingresa la contraselña del usuario con caracteres no permetidos
    f_pass    password     password1***

Haz clic en el boton iniciar sesion
    f_buton    btnenviar

Si las credenciales ingresas con corectas permite el ingreso
    f_get    msjexito    login realizado con exito

Debe mostrar el mensaje Por favor, ingresa un usuario.
    f_get    username-error    Por favor, ingresa un usuario.

Debe mostrar el mensaje El usuario solo debe contener letras.
    f_get    username-error    El usuario solo debe contener letras.

Debe mostrar el mensaje Por favor, ingresa una contraseña.
    f_get    password-error    Por favor, ingresa una contraseña.

Debe mostrar el mensaje La contraseña no puede contener caracteres especiales.
    f_get    password-error    La contraseña no puede contener caracteres especiales.

Cerrar el navegador
    Close Browser


