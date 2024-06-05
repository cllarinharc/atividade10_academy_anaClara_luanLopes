*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/backup.page.robot


*** Test Cases ***

TC:01-Deve ser possível acessar os elementos da funcionalidade Backup
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Backup
    Então deve conter os elementos da funcionalidade backup
TC:02- Deve ser possível fazer o Backup de um produto
    Dado que o cliente está na página inicial

    Quando clica em Menu
    E clica em Backup
    E clica em Gerar Backup
    E confirma operação OK
    Então deve gerar arquivo de Backup


TC:03-Deve ser possível enviar um arquivo de Backup
    Dado que o cliente está na página inicial

    Quando clica em Menu
    E clica em Backup
    E clica em Gerar Backup
    E confirma operação OK
    E clica em enviar
    Então deve enviar arquivo de Backup