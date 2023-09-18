*** Settings ***
Library        SeleniumLibrary
Resource    ../resources/Acciones.robot
Suite Setup    Ingresar a la url del portal para verificacion de credenciales actuales
Suite Teardown    Cerrar el navegador


*** Test Cases ***
Verificar la obligatoriedad del campo usuario
    Haz clic en el boton iniciar sesion
    Debe mostrar el mensaje Por favor, ingresa un usuario.

Verificar la obligatoriedad del campo contaseña
    Ingresa el nombre de usuario válido en el campo Usuario
    Haz clic en el boton iniciar sesion
    Debe mostrar el mensaje Por favor, ingresa una contraseña.

Verificar el tipo de dato permitodo en el campo usuario
    Ingresa el nombre de usuario con caracteres no permetidos
    Haz clic en el boton iniciar sesion
    Debe mostrar el mensaje El usuario solo debe contener letras.
    
Verificar el tipo de dato permitodo en el campo contraseña
    Ingresa el nombre de usuario válido en el campo Usuario
    Ingresa la contraselña del usuario con caracteres no permetidos
    Haz clic en el boton iniciar sesion
    Debe mostrar el mensaje La contraseña no puede contener caracteres especiales.

Iniciar sesión con credenciales validas
    Ingresa el nombre de usuario válido en el campo Usuario
    Ingresa el nombre de usuario válido en el campo Contraseña
    Haz clic en el boton iniciar sesion
    Si las credenciales ingresas con corectas permite el ingreso


