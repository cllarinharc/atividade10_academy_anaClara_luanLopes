*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/export.page.robot
Test Timeout    4 minutes
Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***
TC:01-Deve ser possível acessar os elementos da funcionalidade export
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Export
    Então deve conter os elementos da funcionalidade export

TC:02- Deve ser possivel gerar uma exportação de Dados
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando clica em Menu
    E clica em Export
    E clica em Exportar Dados
    Então deve ser possível gerar o Exportar Dados

TC:03- Deve ser possível enviar a exportação de Dados
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando clica em Menu
    E clica em Export
    E clica em Exportar dados
    E clica em enviar o arquivo 
    Então deve ser possível enviar o arquivo exportado