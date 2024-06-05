*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/import.page.robot


*** Test Cases ***
TC:01-Deve ser possíevl acessar o Importar Dados
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Importar Dados
    Então deve conter os elementos da funcionalidade Import

TC:02- Deve ser possível Importar dados do Restaurar produtos
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Importar Dados
    E clica em Restaurar Produtos
    Então deve ser possível Restaurar produtos com sucesso

TC:03- Deve ser possível Importar dados do Restaurar Entradas
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Importar Dados
    E clica em Restaurar Entradas
    Então deve ser possível Restaurar Entradas com sucesso

TC:04- Deve ser possível Importar dados do Restaurar Saidas
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Importar Dados
    E clica em Restaurar Saidas
    Então deve ser possível Restaurar Saidas com sucesso

TC:05- Deve ser possível Importar dados do Grupo de produtos
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Importar Dados
    E clica em Grupo de Produtos
    Então deve ser possível Iportar Grupo de produtos com sucesso

