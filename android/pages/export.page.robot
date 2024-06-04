*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGINA_MENU}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_EXPORT}      xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
#BOTÕES////////////////////////////////////////////////////////////////////////
${B_EXPORT}          id=br.com.pztec.estoque:id/btn_exportar
${B_EXPOT_DADOS}     id=br.com.pztec.estoque:id/btn_gerar
${B_ENVIAR_1}        id=br.com.pztec.estoque:id/btn_prod
${B_ENVIAR_2}        id=br.com.pztec.estoque:id/btn_ent
${B_ENVIAR_3}        id=br.com.pztec.estoque:id/btn_sai
${B_ENVIAR_4}        id=br.com.pztec.estoque:id/btn_grupo
${B_CONF_EXPORT}     id=android:id/button1
#TEXTOS/////////////////////////////////////////////////////////////////
${T_EXPORT}             id=br.com.pztec.estoque:id/textView3
${T_EXPORT_FORM}        id=br.com.pztec.estoque:id/textView4
${T_ARQUIVO_1}          id=br.com.pztec.estoque:id/datafileprod
${T_ARQUIVO_2}          id=br.com.pztec.estoque:id/datafileent
${T_ARQUIVO_3}          id=br.com.pztec.estoque:id/datafilesai
${T_ARQUIVO_4}          id=br.com.pztec.estoque:id/datafilegrupo

${M_CONFIRMAÇÂO}        id=android:id/alertTitle
${OPCOES_EXPORT}        id=miuix.stub:id/parentPanel
*** Keywords ***

#1
E clica em Export
    Espera o elemento e clica nele    ${B_EXPORT}
Então deve conter os elementos da funcionalidade export
    Espera o elemento e visualiza o conteúdo   ${T_EXPORT}
    Espera o elemento e visualiza o conteúdo   ${T_EXPORT_FORM}
    Espera o elemento e visualiza o conteúdo   ${T_ARQUIVO_1}
    Espera o elemento e visualiza o conteúdo   ${T_ARQUIVO_2}
    Espera o elemento e visualiza o conteúdo   ${T_ARQUIVO_3}
    Espera o elemento e visualiza o conteúdo   ${T_ARQUIVO_4}
    Espera o elemento e visualiza o conteúdo   ${B_EXPOT_DADOS}
    Espera o elemento e visualiza o conteúdo   ${B_ENVIAR_1}
    Espera o elemento e visualiza o conteúdo   ${B_ENVIAR_2}
    Espera o elemento e visualiza o conteúdo   ${B_ENVIAR_3}
    Espera o elemento e visualiza o conteúdo   ${B_ENVIAR_4}



#2
E clica em Exportar Dados
    Espera o elemento e clica nele    ${B_EXPOT_DADOS}
Então deve ser possível gerar o Exportar Dados
    Espera o elemento e clica nele    ${B_CONF_EXPORT}
#3
 E clica em enviar o arquivo 
    Espera o elemento e verifica conteúdo    ${T_ARQUIVO_4}    grupos.csv - 31/12/1969 21:00:00
    Espera o elemento e clica nele    ${B_ENVIAR_4}
Então deve ser possível enviar o arquivo exportado
    Espera o elemento e visualiza o conteúdo   ${OPCOES_EXPORT}

