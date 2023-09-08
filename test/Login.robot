*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library        SeleniumLibrary
Resource    ../resources/Acciones_Login.robot


*** Test Cases ***
Iniciar sesión con credenciales válidas
    Ingresar a la url del portal para verificacion de credenciales
    Ingresar las la informacion del usuario
    Ingresar las la informacion del contraseña
    Hacer clic sobre el boton iniciar sesion

