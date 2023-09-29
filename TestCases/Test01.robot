*** Settings ***
Resource    ../Resources/resource01.robot
Documentation    Cette suite de test est crée par Imane
Suite Setup    Log    j'execute une seule fois avant le test
Suite Teardown    Log    j'execute une seule fois avant le test
Test Setup    Se connecter a l'application orange demo
Test Teardown    Fermer l'application
*** Test Cases ***
Tc001 login test
    
    when saisir le nom d'utilisateur
    And Saisir le mot de passe
    And Cliquer sur le boutton login
    Then valider l'affichage de la page d'acceuil
    


