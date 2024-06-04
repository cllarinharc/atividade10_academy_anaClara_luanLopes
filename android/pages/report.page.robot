*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${RELATÓRIO_ESTOQUE}         id=br.com.pztec.estoque:id/btn_relatorios
${INVENTARIO_ESTOQUE}        id=br.com.pztec.estoque:id/inventario
${ENTRADA_ESTOQUE}           id=br.com.pztec.estoque:id/relentrada
${SAIDA_ESTOQUE}             id=br.com.pztec.estoque:id/relsaida


*** Keywords ***
E clica em Report
    Espera o elemento e faz o clique    ${RELATÓRIO_ESTOQUE}
    Wait Until Page Contains            Relatórios

E clica em Inventário de Estoque
    Espera o elemento e faz o clique    ${INVENTARIO_ESTOQUE} 
    Wait Until Page Contains            Inventário de estoque

E clica em Entradas de Estoque
    Espera o elemento e faz o clique    ${ENTRADA_ESTOQUE} 
    Wait Until Page Contains            Entradas no estoque

E clica em Saidas de Estoque
    Espera o elemento e faz o clique    ${SAIDA_ESTOQUE}  
    Wait Until Page Contains            Saídas do estoque