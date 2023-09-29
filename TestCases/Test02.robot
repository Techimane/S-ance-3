*** Settings ***
Library    SeleniumLibrary
*** Variables ***
# Variable scalaire: c des simples variables qui peut contenir une seule valeur a la fois(portée globale)
${premiere valeur}=    100
${deuxieme valeur}=    200
${nom}=    Imane
${Troisieme valeur}=    200.5
${Browzer}=    edge
${url}=    https://www.google.com
# Les variables de type liste
@{ville}=    Montréal    Laval    Longueil
@{Liste valeur}=    1    2    3    4
# Les variables de type dictionnaire: on stock les données sous forme de pair clés: valeur
&{url-env}=    qa=https://www.google.qa.Ca    dev=https://www.google.dev.Ca
   
*** Test Cases ***
tc01 Mon premier test
    Log    ${premiere valeur}
    Log    ${deuxieme valeur}
    Log    ${nom}
    Log    ${Troisieme valeur}
    Log    ${Browzer}
    Log    ${url}
    Log    ${ville}[0]
    Log    ${ville}[1]
    Log    ${url-env}[qa]
    Log    ${url-env}[dev]
    #Log    ${quatrieme variable}
tc02 mon deuxieme test
    #${quatrieme variable}=    Log    test
    Log    ${nom}