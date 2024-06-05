*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${PAGINA_MENU}          xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
${PAGINA_BACKUP}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout
#BOTÕES////////////////////////////////////////////////////////////////////////
${B_BACKUP}             id=br.com.pztec.estoque:id/btn_backup
${B_GERAR_BACKUP}        id=br.com.pztec.estoque:id/btn_gerar
${B_ENVIAR_BACKUP}      id=br.com.pztec.estoque:id/btn_send
${B_CONF_OPERACAO}      id=android:id/button1
#TEXTOS/////////////////////////////////////////////////////////////////
${T_GERAR_BACKUP}    id=br.com.pztec.estoque:id/textView3
${INFORMACAO}        id=br.com.pztec.estoque:id/textView4
${BACKUP_GERADO}        id=br.com.pztec.estoque:id/datafile
${OPCOES}            id=miuix.stub:id/parentPanel

*** Keywords ***
#1    
Então deve conter os elementos da funcionalidade backup
    Espera o elemento e visualiza o conteúdo   ${PAGINA_BACKUP}
    Espera o elemento e visualiza o conteúdo   ${T_GERAR_BACKUP}
    Espera o elemento e visualiza o conteúdo   ${B_GERAR_BACKUP}
    Espera o elemento e visualiza o conteúdo   ${B_ENVIAR_BACKUP}
    Espera o elemento e visualiza o conteúdo   ${INFORMACAO}

#2
E clica em Backup
    Espera o elemento e clica nele    ${B_MENU}
E clica em Gerar Backup
    Espera o elemento e verifica conteúdo    ${INFORMACAO}    Envie o arquivo de backup para o drive virtual. Caso tenha problemas com seu aparelho seus dados poderão ser restaurados. Atenção, não altere o arquivo original, sob o risco de não conseguir restaurá-lo novamente.
    Espera o elemento e clica nele    ${B_GERAR_BACKUP}
E confirma operação OK
    Espera o elemento e clica nele    ${B_CONF_OPERACAO}
Então deve gerar arquivo de Backup
    Espera o elemento e visualiza o conteúdo   ${BACKUP_GERADO}
#3
E clica em enviar
    Espera o elemento e clica nele    ${B_ENVIAR_BACKUP}
Então deve enviar arquivo de Backup
    Espera o elemento e visualiza o conteúdo   ${OPCOES}



