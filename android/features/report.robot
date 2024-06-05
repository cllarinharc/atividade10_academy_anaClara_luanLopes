*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot
Resource    ../pages/report.page.robot
Test Timeout    4 minutes
Test Setup        Abrir App
Test Teardown     Teardown

*** Test Cases ***

TC:01- Deve ser possível Reportar dados do Inventário de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Inventário de Estoque
    E clica em gerar PDF
    Então deve ser possível Reportar Inventário de Estoque

TC:02- Deve ser possível visualizar dados do Inventário de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Inventário de Estoque
    E clica em gerar PDF
    Então deve ser possível visualizar Inventário de Estoque

TC:03- Deve ser possível Reportar dados do Entradas de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Entradas de Estoque
    E preenche as datas
    E clica em gerar PDF
    Então deve ser possível Reportar Entradas de Estoque

TC:04- Deve ser possível visualizar dados do Entradas de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Entradas de Estoque
    E clica em gerar PDF
    Então deve ser possível visualizar Entradas de Estoque


TC:-5- Não deve ser possível Reportar dados do Entradas de Estoque sem as Datas preenchidas
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Entradas de Estoque
    E clica em gerar PDF
    Então não deve ser possível Reportar Entradas de Estoque

TC:06- Não deve ser possível Reportar dados do Entradas de Estoque com a Data inicial sendo uma data depois da data final 
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Entradas de Estoque
    E preenche as datas trocadas
    E clica em gerar PDF
    Então não deve ser possível Reportar Entradas de Estoque com datas trocadas

TC:07- Deve ser possível Reportar dados do Saidas de Estoque 
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Saidas de Estoque
    E preenche as datas
    E clica em gerar PDF
    Então deve ser possível Reportar Saidas de Estoque

TC:08- Deve ser possível visualizar dados do Saidas de Estoque
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Saidas de Estoque
    E clica em gerar PDF
    Então deve ser possível visualizar Saidas de Estoque


TC:09- Não deve ser possível Reportar dados do Saidas de Estoque sem as Datas preenchidas
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Saidas de Estoque
    E clica em gerar PDF
    Então não deve ser possível Reportar Saidas de Estoque

TC:10- Não deve ser possível Reportar dados do Saidas de Estoque com a Data inicial sendo uma data depois da data final 
    Dado que o cliente está na página inicial
    Quando clica em Menu
    E clica em Report 
    E clica em Saidas de Estoque
    E preenche as datas trocadas
    E clica em gerar PDF
    Então não deve ser possível Reportar Saidas de Estoque com datas trocadas
