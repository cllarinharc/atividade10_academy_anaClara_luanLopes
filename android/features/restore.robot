*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/restore.page.robot
Test Timeout    4 minutes
Test Setup        Abrir App
Test Teardown     Teardown

*** Test Cases ***
TC-Deve ser possíevl acessar o Restore
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Restore
    Então deve conter os elementos da funcionalidade Restore

TC- Deve ser possivel Restaurar Backup
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Restore
    E clica em selecionar arquivo
    E clica em Estoque
    E clica em produtos.B_PRODUTOS_CSV
    E confirma ok
    Então deve ser possível Restaurar Backup


#usar o xpath pra pegar a ultima opção:
#//android...[last()]
# 
# usar templates para criar vários produtos.
# 
# para todos as keyword imediatas, é interessante usar uma de verificar somente, antes que clicar ou inputar texto
# 
# 
# 
# a