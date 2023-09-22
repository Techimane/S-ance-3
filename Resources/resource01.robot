*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}=    edge

*** Keywords ***
Se connecter a l'application orange demo
    Open Browser    ${url}    ${Browser}
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