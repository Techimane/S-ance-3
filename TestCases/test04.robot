*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}=    edge

*** Test Cases ***
Tc001 login test
    Se connecter a l'application orange demo    ${url}    ${Browser}
    Saisir le nom d'utilisateur
    Saisir le mot de passe
    Cliquer sur le boutton login
    valider l'affichage de la page d'acceuil
    Fermer l'application


*** Keywords ***
Se connecter a l'application orange demo
    [Arguments]    ${myurl}    ${myBrowser}
    Open Browser    ${myurl}    ${myBrowser}
    Maximize Browser Window
    Sleep    3
saisir le nom d'utilisateur
    Clear Element Text    name:username
    Input Text    name:username    Admin

Saisir le mot de passe
    Clear Element Text    name:username
    Input Password    name:password    admin123

Cliquer sur le boutton login
    Click Button    xpath://button
    Sleep    3

valider l'affichage de la page d'acceuil
    Element Text Should Be    xpath://h6    Dashboard

Fermer l'application
    Close Browser