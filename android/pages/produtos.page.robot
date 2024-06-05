*** Settings ***
Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGINA_INICIAL}          id=///android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/todoObjeto"]
${PAGINA_NOVO}             xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]
${PAGINA_EDITAR}           xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]    #iguais
${PAGINA_ENTRADA}          xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]
${PAGINA_SAIDA}            xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]
${TECLADO_NORM}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout

${PRODUTO_ACHADO1}         xpath=(//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/linha_parte1"])[1]
${PRODUTO_ACHADO2}         xpath=(//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/linha_parte1"])[2]
#BOTÔES ///////////////////////////////////////
${B_NOVO}                  id=br.com.pztec.estoque:id/Button1
${B_MENU}                  id=br.com.pztec.estoque:id/Button3
${B_DELETAR}               xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/deletar"]
${B_EDITAR}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/editar"]
${B_ENTRADA}               xpath=///android.widget.Button[@resource-id="br.com.pztec.estoque:id/entrada"]
${B_SAIDA}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/saida"]
${B_SALVAR}                id=br.com.pztec.estoque:id/btn_gravar_assunto
${SIM_EXCLUSAO}            xpath=//android.widget.Button[@resource-id="android:id/button1"]
${NAO_EXCLUSAO}            xpath=//android.widget.Button[@resource-id="android:id/button2"]
#CAMPOS ///////////////////////////////////////
${C_CODIGO}                xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_codigo"]
${C_DESCRICAO}             xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_descricao"]
${C_UNIDADE}               xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_unidade"]
${C_QUANTIDADE}            xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_quantidade"]
${C_VALUNIT}               xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_valunit"]
${C_LOTE}                  xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_lote"]

${C_ADD_ESTOQUE}           xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_qtdentrada"]
${C_MOTIVO}                xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_motivo"]
${C_DOC_REF}               xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_referencia"]
${C_DIM_ESTOQUE}           xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_qtdsaida"]
${C_LOCALIZAR}             id=android:id/search_src_text

#TEXTO ///////////////////////////////////////
${ID}                      xpath=//android.widget.TextView[@text="ID"]   #
${R_ID}                    xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_idprod"]
${CODIGO}                  xpath=//android.widget.TextView[@text="Código"]
${R_CODIGO}                xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_codigo"]
${DESCRICAO}               xpath=//android.widget.TextView[@text="Descrição"]
${R_DESCRICAO}             xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_descricao"]
${GRUPO}                   xpath=//android.widget.TextView[@text="Grupo"]  #
${B_GRUPO}                 xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_descateg"]
${UNIDADE}                 xpath=//android.widget.TextView[@text="Unidade"]
${R_UNIDADE}               xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_unidade"]
${QUANTIDADE}              xpath=//android.widget.TextView[@text="Quantidade"]
${R_QUANTIDADE}            xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_quantidade"]
${VALUNIT}                 xpath=//android.widget.TextView[@text="Val.Unit."]
${R_VALUNIT}               xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_valunit"]
${LOTE}                    xpath=//android.widget.TextView[@text="Lote"]
${R_LOTE}                  xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_lote"]
${VALIDADE}                xpath=//android.widget.TextView[@text="Validade"]
${R_VALIDADE}              xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_validade"]

${T_QNT_ATUAL}             xpath=//android.widget.TextView[@text="Quantidade atual"]
${N_QNT_ATUAL}             xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/txt_qtdatual"]
${T_Add_ESTOQUE_CIMA}      xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/lbl_titulo"]
${T_Add_ESTOQUE}           xpath=(//android.widget.TextView[@text="Adicionar estoque"])[2]
${T_MOTIVO}                xpath=//android.widget.TextView[@text="Motivo"]
${T_DOC_REF}               xpath=//android.widget.TextView[@text="Doc/Ref."]
${T_DIM_ESTOQUE_CIMA}      xpath=//android.widget.TextView[@resource-id="br.com.pztec.estoque:id/lbl_titulo"]
${T_DIM_ESTOQUE}           xpath=(//android.widget.TextView[@text="Diminuir estoque"])[2]
${T_CONF_EXCLUSAO}         id=android:id/contentPanel

#MENSAGEM //////////////////////////////////
${CONF_EXCLUSAO}           xpath=/hierarchy/android.widget.FrameLayout
${T_MENSAGEM}              xpath=//android.widget.TextView[@resource-id="android:id/alertTitle"]
${T_CONF_EXCLUSAO}         xpath=//android.widget.TextView[@resource-id="android:id/message"]

#PESQUISAR////////////////////////////////////////////////////////
${B_PESUISAR}              id=android:id/search_button     
${C_PESUISAR}              id=android:id/search_src_text  

*** Keywords ***

#0////////////////////////////////////
Dado que o cliente está na página inicial
    verifica elemento    ${PAGINA_INICIAL}
Quando ele clica em Novo
    Espera o elemento e clica nele    ${B_NOVO}
Então deve conter os elementos da funcionalidade Novo
    Verifica elemento                ${C_CODIGO}   
    Wait Until Element Is Visible    ${CODIGO}   
    Wait Until Element Is Visible    ${C_DESCRICAO}   
    Wait Until Element Is Visible    ${DESCRICAO}   
    Wait Until Element Is Visible    ${C_UNIDADE}   
    Wait Until Element Is Visible    ${UNIDADE}   
    Wait Until Element Is Visible    ${C_QUANTIDADE}   
    Wait Until Element Is Visible    ${QUANTIDADE}   
    Wait Until Element Is Visible    ${C_VALUNIT} 
    Wait Until Element Is Visible    ${VALUNIT}   
    Wait Until Element Is Visible    ${C_LOTE}   
    Wait Until Element Is Visible    ${LOTE}   
    Wait Until Element Is Visible    ${C_CODIGO}   
    Wait Until Element Is Visible    ${VALIDADE}   
    Wait Until Element Is Visible    ${B_SALVAR}   
  

#1 & 2 ///////////////////////////////////
E preenche o campo Código
    Espera o elemento e inputa um texto    ${C_CODIGO}    1420

E preenche o campo Descrição
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    alguma coisa
E preenche o campo Unidade
    Espera o elemento e inputa um texto    ${C_UNIDADE}    30
E preenche o campo Quantidade
    Espera o elemento e inputa um texto    ${C_QUANTIDADE}    6.0
E preenche o campo Val.Unit
    Espera o elemento e inputa um texto    ${C_VALUNIT}    6.0
E preenche o campo Lote
    Espera o elemento e inputa um texto    ${C_LOTE}    6.0
E confirma operação
    Espera o elemento e clica nele    ${B_SALVAR}
Então deve ser possível cadastrar um produto com sucesso
    Espera o elemento e verifica conteúdo    ${CODIGO}    1420
    Espera o elemento e verifica conteúdo    ${DESCRICAO}    PlayStation 2
    Espera o elemento e verifica conteúdo    ${UNIDADE}    3
    Espera o elemento e verifica conteúdo    ${GRUPO}    Geral
    Espera o elemento e verifica conteúdo    ${QUANTIDADE}    40
    Espera o elemento e verifica conteúdo    ${VALUNIT}    2500
    Espera o elemento e verifica conteúdo    ${LOTE}    1234

#03////////////////////////////////////////
E tem um produto cadastrado
    Espera o elemento e clica nele    ${B_NOVO}
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    Chileno
    Espera o elemento e inputa um texto    ${C_QUANTIDADE}    50
    Espera o elemento e inputa um texto    ${C_VALUNIT}    100
    Espera o elemento e clica nele    ${B_SALVAR}

Quando ele clica em Entrada
    Espera o elemento e clica nele    ${B_ENTRADA}
E preenche o campo Adicionar Estoque
    Espera o elemento e inputa um texto    ${C_ADD_ESTOQUE}    6.0
Então deve ser possível acrescentar um produto com sucesso
    Espera o elemento e verifica conteúdo    ${QUANTIDADE}    7.0

#04///////////////////////////////////////
Quando ele clica em Saída
    Espera o elemento e clica nele    ${B_SAIDA}
E preenche o campo Diminuir Estoque
    Espera o elemento e inputa um texto    ${C_DIM_ESTOQUE}    1.0
Então deve ser possível decrementar um produto com sucesso
    Espera o elemento e inputa um texto    ${QUANTIDADE}     5.0

#05////////////////////////////////////
Quando ele clica em editar
    Espera o elemento e clica nele    ${B_EDITAR}
E altera o campo Descrição
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    PlayStation
E altera o campo Quantidade
        Espera o elemento e inputa um texto    ${C_QUANTIDADE}    50
E altera o campo Val.Unit
    Espera o elemento e inputa um texto    ${C_VALUNIT}    2000
Então deve ser possível editar um produto com sucesso
    Espera o elemento e visualiza o conteúdo   ${PRODUTO_ACHADO1}
#06/////////////////////////////////////
Quando ele clica em excluir
    Espera o elemento e clica nele    ${B_DELETAR}
E confirma operação de exclusão
    Espera o elemento e visualiza o conteúdo    ${T_CONF_EXCLUSAO}    
    Espera o elemento e clica nele    ${SIM_EXCLUSAO}

Então deve ser possível excluir um produto com sucesso
    Espera o elemento e espera que esteja desabilitado    ${PRODUTO_ACHADO2}
#7//////////////////////////////////////
E desconfirma operação
    Espera o elemento e visualiza o conteúdo    ${T_CONF_EXCLUSAO}    
    Espera o elemento e clica nele    ${NAO_EXCLUSAO}
Então deve ser possível cancelar exclusão de um produto com sucesso
    Espera o elemento e verifica conteúdo    ${CODIGO}    1420
    Espera o elemento e verifica conteúdo    ${DESCRICAO}    PlayStation 2
    Espera o elemento e verifica conteúdo    ${UNIDADE}    3
    Espera o elemento e verifica conteúdo    ${GRUPO}    Geral
    Espera o elemento e verifica conteúdo    ${QUANTIDADE}    40
    Espera o elemento e verifica conteúdo    ${VALUNIT}    2500
    Espera o elemento e verifica conteúdo    ${LOTE}    1234

#8//////////////////////////////////////
Quando ele clica em pesquisar
    Espera o elemento e clica nele    ${B_PESUISAR}
E preenche com um valor conhecido de Quantidade
    Espera o elemento e inputa um texto    ${C_PESUISAR}    40
Então deve ser possível pesquisar um produto com sucesso
    Espera o elemento e visualiza o conteúdo    ${PRODUTO_ACHADO1}    

#9//////////////////////////////////////
E preenche com um valor conhecido de Unidade
    Espera o elemento e inputa um texto    ${C_PESUISAR}    3

#10/////////////////////////////////////
E preenche com um valor conhecido de Descrição
    Espera o elemento e inputa um texto    ${C_PESUISAR}    PLayStation 2

#11/////////////////////////////////////
E preenche com um valor conhecido de Val.Unit
    Espera o elemento e inputa um texto    ${C_PESUISAR}    2500

#12/////////////////////////////////////
Quando ele achar um produto
    Espera o elemento e clica nele    ${B_PESUISAR}
    Espera o elemento e inputa um texto    ${C_PESUISAR}    40
    Espera o elemento e inputa um texto    ${C_PESUISAR}    PLayStation 2
    Espera o elemento e visualiza o conteúdo    ${PRODUTO_ACHADO1}    
Então deve ser possível identificar o campo ID 
    Espera o elemento e visualiza o conteúdo    ${ID}
    Espera o elemento e visualiza o conteúdo    ${R_ID}
E deve ser possível identificar o campo Grupo
    Espera o elemento e visualiza o conteúdo    ${GRUPO}
#BAD REQUEST ///////////////////////////
#13/////////////////////////////////////
Então não deve ser possível cadastrar um produto com sucesso
    Espera o elemento e clica nele    ${B_NOVO}
    Espera o elemento e inputa um texto    ${C_CODIGO}    1420
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    ''
    Espera o elemento e inputa um texto    ${C_UNIDADE}    ''
    Espera o elemento e inputa um texto    ${C_QUANTIDADE}    ''
    Espera o elemento e inputa um texto    ${C_VALUNIT}    ''
    Espera o elemento e inputa um texto    ${C_LOTE}    ''
    Espera o elemento e clica nele    ${B_SALVAR}
    Verifica que elemento não está presente    ${CODIGO}    1420

#14/////////////////////////////////////
Não deve ser possível cadastrar sem preencher o campos Quantidade
    Espera o elemento e clica nele    ${B_NOVO}
    Espera o elemento e inputa um texto    ${C_CODIGO}    1420
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    PLayStation 5
    Espera o elemento e inputa um texto    ${C_UNIDADE}    2
    Espera o elemento e inputa um texto    ${C_VALUNIT}    10.0
    Espera o elemento e inputa um texto    ${C_LOTE}    Lote1
    Espera o elemento e clica nele    ${B_SALVAR}
    Verifica que elemento não está presente    ${CODIGO}    1420

#15/////////////////////////////////////
Não deve ser possível cadastrar sem preencher o campo Val.Unit
    Espera o elemento e clica nele    ${B_NOVO}
    Espera o elemento e inputa um texto    ${C_CODIGO}    1420
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    PLayStation 3
    Espera o elemento e inputa um texto    ${C_UNIDADE}    3
    Espera o elemento e inputa um texto    ${C_QUANTIDADE}    10.0
    Espera o elemento e inputa um texto    ${C_LOTE}    Lote1
    Espera o elemento e clica nele    ${B_SALVAR}
    Verifica que elemento não está presente    ${CODIGO}    1420

#16/////////////////////////////////////
Então não deve ser possível preencher o campo Quantidade com teclado não numérico
    Espera o elemento e clica nele    ${B_NOVO}
    Espera o elemento e inputa um texto    ${C_CODIGO}    1420
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    PLayStation 1
    Espera o elemento e inputa um texto    ${C_UNIDADE}    2
    Espera o elemento e inputa um texto    ${C_QUANTIDADE}    texto
    Verifica que elemento não contém texto    ${C_QUANTIDADE}    texto

#17/////////////////////////////////////
Então não deve ser possível preencher o campo Val.Unitcom teclado não numérico
    Espera o elemento e clica nele    ${B_NOVO}
    Espera o elemento e inputa um texto    ${C_CODIGO}    1420
    Espera o elemento e inputa um texto    ${C_DESCRICAO}    PLayStation 21
    Espera o elemento e inputa um texto    ${C_UNIDADE}    1
    Espera o elemento e inputa um texto    ${C_QUANTIDADE}    10.0
    Espera o elemento e inputa um texto    ${C_VALUNIT}    texto
    Verifica que elemento não contém texto    ${C_VALUNIT}    texto

#18/////////////////////////////////////
E preenche o campo Diminuir Estoque em 25 Unidades
    Espera o elemento e clica nele    ${B_SAIDA}
    Espera o elemento e inputa um texto    ${C_DIM_ESTOQUE}    25.0
    Espera o elemento e clica nele    ${B_SALVAR}
    Verifica que elemento não está presente    ${QUANTIDADE}    -15.0
    Espera o elemento e clica nele    ${B_SALVAR}
    Verifica mensagem de erro    Estoque insuficiente
    Espera o elemento e verifica conteúdo    ${QUANTIDADE}    6.0