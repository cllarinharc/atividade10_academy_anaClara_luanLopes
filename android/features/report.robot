*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/report.page.robot


*** Test Cases ***
TC-Deve ser possíevl acessar o Report 
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    Então deve conter os elementos da funcionalidade Report

TC- Deve ser possível Reportar dados do Inventário de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Inventário de Estoque
    Então deve ser possível Reportar Inventário de Estoque

TC- Deve ser possível Reportar dados do Entradas de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Entradas de Estoque
    Então deve ser possível Reportar Entradas de Estoque

TC- Deve ser possível Reportar dados do Saidas de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Saidas de Estoque
    Então deve ser possível Reportar Saidas de Estoque