*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/export.page.robot


*** Test Cases ***
TC-Deve ser possíevl acessar o Exportar Dados
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Exportar Dados
    Então deve conter os elementos da funcionalidade Export

TC- Deve ser possivel gerar uma exportação de Dados
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando clica em Menu
    E clica em Exportar Dados
    E clica no gerador de Exportar Dados
    Então deve ser possível gerar o Exportar Dados

TC- Deve ser possível enviar a exportação de Dados
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando clica em Menu
    E clica em Exportar dados
    Então deve conter os elementos desta funcionalidade