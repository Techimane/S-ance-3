*** Settings ***


*** Variables ***


*** Test Cases ***

Tc01
    [Tags]    regression
    Log    test1
Tc02
    [Tags]    regression
    Log    test2
Tc03
    [Tags]    sanity
    Log    test3
Tc04
    [Tags]    sanity
    Log    test4
Tc05
    [Tags]    performance
    Log    test5
Tc06
    [Tags]    performance
    Log    test6
    # pr executer tous les cas de test: robot .