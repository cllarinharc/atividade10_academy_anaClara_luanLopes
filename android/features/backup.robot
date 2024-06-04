*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/backup.page.robot


*** Test Cases ***

TC- Deve ser possível fazer o Backup de um produto
    Dado que o cliente está na página inicial
    E tem um produto cadastrado 
    Quando selecionar a opção "Menu"
    E acessar a opção "Backup"
    E confirma operação
    Então deve "Gerar Backup" dos dados

TC-Deve ser possível enviar um arquivo de Backup
    Dado que o cliente está na página inicial
    E tem um produto cadastrado
    Quando selecionar a opção "Menu"
    E acessar a opção "Backup"
    E confirma operação
    E "Gerar Backup" dos dados
    Então deve enviar arquivo de Backup