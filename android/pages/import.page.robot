*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGINA_MENU}            xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout

#BOTÕES////////////////////////////////////////////////////////////////////////
${B_INPORT}                id=br.com.pztec.estoque:id/btn_importar
${B_RESTAURA_PROD}         id=br.com.pztec.estoque:id/btn_produtos
${B_RESTAURA_ENTRADAS}     id=br.com.pztec.estoque:id/btn_entradas
${B_RESTAURA_SAIDAS}       id=br.com.pztec.estoque:id/btn_saidas
${B_GRUPO_PROD}            id=br.com.pztec.estoque:id/btn_grupos

#TEXTOS/////////////////////////////////////////////////////////////////
${T_INPORT}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout/android.widget.LinearLayout[1]
${CAIXA_OPC}               id=android:id/alertTitle

*** Keywords ***

#1
E clica em Importar Dados
    Espera o elemento e clica nele    ${B_INPORT}
Então deve conter os elementos da funcionalidade Import
    Espera o elemento e visualiza o conteúdo   ${T_INPORT}
    Espera o elemento e visualiza o conteúdo   ${B_RESTAURA_PROD}
    Espera o elemento e visualiza o conteúdo   ${B_RESTAURA_ENTRADAS}
    Espera o elemento e visualiza o conteúdo   ${B_RESTAURA_SAIDAS}
    Espera o elemento e visualiza o conteúdo   ${B_GRUPO_PROD}

#2
E clica em Restaurar Produtos
    Espera o elemento e clica nele    ${B_RESTAURA_PROD}
Então deve ser possível Restaurar produtos com sucesso
    Espera o elemento e verifica conteúdo    ${CAIXA_OPC}    /storage/emulated/0
#3
E clica em Restaurar Entradas
    Espera o elemento e clica nele    ${B_RESTAURA_ENTRADAS}
Então deve ser possível Restaurar Entradas com sucesso
    Espera o elemento e verifica conteúdo    ${CAIXA_OPC}    /storage/emulated/0
#4
E clica em Restaurar Saidas
    Espera o elemento e clica nele    ${B_RESTAURA_SAIDAS}
Então deve ser possível Restaurar Saidas com sucesso
    Espera o elemento e verifica conteúdo    ${CAIXA_OPC}    /storage/emulated/0
#5
E clica em Grupo de Produtos
    Espera o elemento e clica nele    ${B_GRUPO_PROD}
Então deve ser possível Iportar Grupo de produtos com sucesso
    Espera o elemento e verifica conteúdo    ${CAIXA_OPC}    /storage/emulated/0
