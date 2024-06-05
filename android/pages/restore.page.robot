*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGINA_MENU}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_RESTORE}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout

#BOTÕES////////////////////////////////////////////////////////////////////////
${B_RESTORE}        id=br.com.pztec.estoque:id/btn_restore
${B_SELECIONAR_ARQ}        id=br.com.pztec.estoque:id/btn_procurar
${B_ESTOQUE}        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Estoque"]
${B_PRODUTOS_CSV}        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Estoque"]
${B_CONF_RESTAURACAO}        id=android:id/button1
${T_RESTORE}        id=br.com.pztec.estoque:id/textView3
#MENSAGEM//////////////////////////////////////////////////////////////////
${ATENCAO}    id=br.com.pztec.estoque:id/lbl_mensagem
${ATENCAO_2}    id=android:id/message
${MENSAGEM_O_CONCLUIDA}    id=android:id/button1
*** Keywords ***
#1

E clica em Restore
    Espera o elemento e clica nele    ${B_RESTORE}

Então deve conter os elementos da funcionalidade Restore
    Espera o elemento e visualiza o conteúdo   ${T_RESTORE}
    Espera o elemento e verifica conteúdo    ${ATENCAO}    Atenção: você só deve executar esta operação caso tenha trocado de aparelho ou reinstalado o aplicativo.
    Espera o elemento e visualiza o conteúdo   ${B_SELECIONAR_ARQ}

#2
E clica em selecionar arquivo
    Espera o elemento e clica nele    ${B_SELECIONAR_ARQ}
E clica em Estoque
    Swipe By Percent    50    80    50    40
    Espera o elemento e clica nele    ${B_ESTOQUE}
E clica em produtos.B_PRODUTOS_CSV
    Espera o elemento e clica nele    ${B_PRODUTOS_CSV}
E confirma ok
    Espera o elemento e verifica conteúdo    ${ATENCAO_2}    Atenção: você não poderá desfazer esta operação. Tem certeza que deseja continuar?
    Espera o elemento e clica nele    ${B_CONF_RESTAURACAO}
Então deve ser possível Restaurar Backup
    Espera o elemento e verifica conteúdo    ${MENSAGEM_O_CONCLUIDA}    Operação concluída!