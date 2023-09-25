*** Settings ***
Library    SeleniumLibrary
Resource    resources/account_resources.robot

*** Test Cases ***
Ver Saldo de Cuenta
    [Documentation]    Como usuario, quiero ver el saldo de mi cuenta.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    [Teardown]    Close Browser
    Ir a la Página de Cuenta
    Verificar Saldo de Cuenta    $1000.00

*** Keywords ***
Ir a la Página de Cuenta
    [Documentation]    Navega a la página de la cuenta del usuario.
    Click Link    xpath://a[@id='account-link']

Verificar Saldo de Cuenta
    [Documentation]    Verifica que se muestre el saldo de la cuenta.
    [Arguments]    ${expected_balance}
    Wait Until Page Contains Element    xpath://span[@id='balance']
    ${actual_balance}    Get Text    xpath://span[@id='balance']
    Should Be Equal As Strings    ${actual_balance}    ${expected_balance}
