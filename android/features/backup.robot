*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/backup.page.robot


*** Test Cases ***

TC- Deve ser possível fazer o Backup de um produto
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando clica em Menu
    E clica em Backup
    E clica em Gerar Backup
    E confirma operação
    Então deve gerar arquivo de Backup

TC-Deve ser possível enviar um arquivo de Backup
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando clica em Menu
    E clica em Backup
    E clica em Gerar Backup
    E confirma operação
    E clica em enviar
    Então deve enviar arquivo de Backup