*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${PAGINA_MENU}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_RELATORIOS}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_INVENTARIO_ESTOQUE}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_ENTRADAS_ESTOQUE}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_SAIDAS_ESTOQUE}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout

#BOTÕES////////////////////////////////////////////////////////////////////////
${B_RELATORIO}        id=br.com.pztec.estoque:id/btn_relatorios
${B_INVENTARIO_ESTOQUE}        id=br.com.pztec.estoque:id/inventario
${B_ENTRADAS_ESTOQUE}        id=br.com.pztec.estoque:id/relentrada
${B_SAIDAS_ESTOQUE}        id=br.com.pztec.estoque:id/relsaida
${B_VIZUALIZAR_PDF}        id=br.com.pztec.estoque:id/btn_abrir
${B_ENVIAR_PDF}        id=br.com.pztec.estoque:id/btn_email
${B_GERAR_PDF}        id=br.com.pztec.estoque:id/btn_gerar
${B_DATA_INICIAL}        id=br.com.pztec.estoque:id/data1
${B_DATA_FINAL}        id=br.com.pztec.estoque:id/data2
#DATA--------------------------------------------------------------------------
${B_CALENDARIO_DIA_4}    xpath=//android.view.View[@content-desc="04 junho 2024"]
${B_CALENDARIO_DIA_11}    xpath=//android.view.View[@content-desc="11 junho 2024"]
${B_CALENDARIO_CANCELA}    id=android:id/button2
${B_CALENDARIO_OK}    id=android:id/button1

${C_CALENDARIO}    id=android:id/month_view
${T_CALENDARIO_DATA_ESCOLHIDA}    id=android:id/date_picker_header_date
#-------------------------------------------------------------------------------
#CAMPOS////////////////////////////////////////////////////////////////
${PDF_GERADO}           id=br.com.pztec.estoque:id/datafile
${PDF_AIND_N_GERADO}    id=br.com.pztec.estoque:id/datafile
#TEXTOS/////////////////////////////////////////////////////////////////
${T_MENU}        id=br.com.pztec.estoque:id/textView3
${T_RELATORIO}        id=br.com.pztec.estoque:id/lbl_titulo
${T_INVENTARIO _ESTOQUE}        id=br.com.pztec.estoque:id/lbl_titulo
${T_ENTRADA_ESTOQUE}        id=br.com.pztec.estoque:id/lbl_titulo
${T_SAIDA_ESTOQUE}        id=br.com.pztec.estoque:id/lbl_titulo
#--------------------------------------------------------------------
${MENSAGEM}    id=android:id/alertTitle
${T_N_PRE_DATAS}    id=android:id/message
${MENSAGEM_OK}    id=android:id/button1


*** Keywords ***
#1
Quando clica em Menu
    Espera o elemento e clica nele    ${B_MENU}
E clica em Report 
    Espera o elemento e clica nele    ${B_RELATORIO}
E clica em Inventário de Estoque
    Espera o elemento e clica nele    ${B_INVENTARIO_ESTOQUE}
E clica em gerar PDF
    Espera o elemento e clica nele    ${B_GERAR_PDF}
Então deve ser possível Reportar Inventário de Estoque
    Espera o elemento e clica nele    ${B_ENVIAR_PDF}
#2
Então deve ser possível visualizar Inventário de Estoque
    Espera o elemento e clica nele    ${B_VIZUALIZAR_PDF}
#3
E clica em Entradas de Estoque
    Espera o elemento e clica nele    ${B_ENTRADAS_ESTOQUE}
E preenche as datas
    Espera o elemento e clica nele    ${B_DATA_INICIAL}
    Espera o elemento e clica nele    ${B_CALENDARIO_DIA_4}
    Espera o elemento e clica nele    ${B_CALENDARIO_OK}
    Espera o elemento e clica nele    ${B_DATA_FINAL}
    Espera o elemento e clica nele    ${B_CALENDARIO_DIA_11}
    Espera o elemento e clica nele    ${B_CALENDARIO_OK}

Então deve ser possível Reportar Entradas de Estoque
    Espera o elemento e clica nele    ${B_ENVIAR_PDF}

#4
Então deve ser possível visualizar Entradas de Estoque
    Espera o elemento e visualiza o conteúdo    ${B_VIZUALIZAR_PDF}
    Espera o elemento e clica nele    ${B_VIZUALIZAR_PDF}
#5
Então não deve ser possível Reportar Entradas de Estoque
    Espera o elemento e visualiza o conteúdo   ${MENSAGEM}
    Espera o elemento e verifica conteúdo    ${T_N_PRE_DATAS}    Por favor selecione um período de datas.
#6
E preenche as datas trocadas
     Espera o elemento e clica nele    ${B_DATA_INICIAL}
    Espera o elemento e clica nele    ${B_CALENDARIO_DIA_11}
    Espera o elemento e clica nele    ${B_CALENDARIO_OK}
    Espera o elemento e clica nele    ${B_DATA_FINAL}
    Espera o elemento e clica nele    ${B_CALENDARIO_DIA_4}
    Espera o elemento e clica nele    ${B_CALENDARIO_OK}
Então não deve ser possível Reportar Entradas de Estoque com datas trocadas
    Espera o elemento e visualiza o conteúdo   ${MENSAGEM}
    Espera o elemento e verifica conteúdo    ${T_N_PRE_DATAS}    A data final não pode ser menor do que a data inicial.
#7
E clica em Saidas de Estoque
    Espera o elemento e clica nele    ${B_SAIDAS_ESTOQUE}

Então deve ser possível Reportar Saidas de Estoque
    Espera o elemento e clica nele    ${B_ENVIAR_PDF}

#8
Então deve ser possível visualizar Saidas de Estoque
    Espera o elemento e clica nele    ${B_VIZUALIZAR_PDF}

#9 
Então não deve ser possível Reportar Saidas de Estoque
    Espera o elemento e visualiza o conteúdo   ${MENSAGEM}
    Espera o elemento e verifica conteúdo    ${T_N_PRE_DATAS}    Por favor selecione um período de datas.
#10 
Então não deve ser possível Reportar Saidas de Estoque com datas trocadas
    Espera o elemento e visualiza o conteúdo   ${MENSAGEM}
    Espera o elemento e verifica conteúdo    ${T_N_PRE_DATAS}    A data final não pode ser menor do que a data inicial.