*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${B_MENU}             id=br.com.pztec.estoque:id/Button3
${B_NOVO}             id=android:id/button1
${BACKUP}             id=br.com.pztec.estoque:id/btn_backup
${GERAR_BACKUP}       id=br.com.pztec.estoque:id/btn_gerar
${ARQUIVO_BACKUP}     id=br.com.pztec.estoque:id/datafile
${ENVAR_BACKUP}       id=br.com.pztec.estoque:id/btn_send
${FINALIZAR}          xpath=//android.widget.TextView[@resource-id="android:id/alertTitle"]

*** Keywords ***
E tem um produto cadastrado       
    Espera o elemento e faz o clique    ${B_NOVO}
    Input Text    ${C_CODIGO} 
    Input Text    ${C_DESCRICAO}
    Input Text    ${C_UNIDADE} 
    Input Text    ${C_QUANTIDADE}     
    Input Text    ${C_VALUNIT}        
    Input Text    ${C_LOTE}    1421
    Espera o elemento e faz o clique    ${B_SALVAR}


Quando selecionar a opção "Menu"
    Espera o elemento e faz o clique    ${B_MENU} 

E acessar a opção "Backup"
    Espera o elemento e faz o clique    ${BACKUP}   

Então deve "Gerar Backup" dos dados
    Espera o elemento e faz o clique    ${GERAR_BACKUP}
    Element Attribute Should Match      ${FINALIZAR}    resource-id    android:id/alertTitle    true
    Element Should Contain Text         ${FINALIZAR}    Operação concluída!
    Espera o elemento e faz o clique    ${B_NOVO}
    Element Should Be Visible           ${ARQUIVO_BACKUP}

E "Gerar Backup" dos dados
    Espera o elemento e faz o clique    ${GERAR_BACKUP}    

Então deve enviar arquivo de Backup
    Element Should Be Visible    ${ENVAR_BACKUP}    
    Element Should Be Enabled    ${ENVAR_BACKUP}
