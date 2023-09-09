*** Settings ***
Library        SeleniumLibrary
Resource    ../resources/Acciones_Login_Exitoso.robot
Resource    ../resources/Acciones_Login_Fallido.robot


*** Test Cases ***
Iniciar sesión con credenciales válidas
    Ingresar a la url del portal para verificacion de credenciales
    Ingresar las la informacion del usuario
    Ingresar las la informacion del contraseña
    Hacer clic sobre el boton iniciar sesion

Iniciar sesión con credenciales inválidas
    Ingresar a la url del portal para verificacion de credenciales actuales
    Verificar que el campo usuario sea obligatorio
    Verificar que el campo contraseña sea obligatorio
    Hacer clic en el boton iniciar sesion


