*** Settings ***
Library        SeleniumLibrary
Resource    ../resources/Acciones.robot


*** Test Cases ***
Iniciar sesión con credenciales validas
    Ingresar a la url del portal para verificacion de credenciales actuales
    Verificar que el campo usuario sea obligatorio
    Verificar que el campo contraseña sea obligatorio
    Hacer clic en el boton iniciar sesion
    Si las credenciales ingresas con corectas permite el ingreso


