*** Settings ***
Resource    ../Resources/resource01.robot


*** Test Cases ***
Tc001 login test
    Se connecter a l'application orange demo
    saisir le nom d'utilisateur
    Saisir le mot de passe
    Cliquer sur le boutton login
    valider l'affichage de la page d'acceuil
    Fermer l'application


