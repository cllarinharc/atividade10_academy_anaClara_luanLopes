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
${B_NOVO}                  xpath=///android.widget.Button[@resource-id="br.com.pztec.estoque:id/Button1"]
${B_DELETAR}               xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/deletar"]
${B_EDITAR}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/editar"]
${B_ENTRADA}               xpath=///android.widget.Button[@resource-id="br.com.pztec.estoque:id/entrada"]
${B_SAIDA}                 xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/saida"]
${B_SALVAR}                xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_gravar_assunto"]
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

#MENSAGEM //////////////////////////////////
${CONF_EXCLUSAO}           xpath=/hierarchy/android.widget.FrameLayout
${T_MENSAGEM}              xpath=//android.widget.TextView[@resource-id="android:id/alertTitle"]
${T_CONF_EXCLUSAO}         xpath=//android.widget.TextView[@resource-id="android:id/message"]
*** Keywords ***
Dado que o cliente está na página inicial
    Wait Until Element Is Visible    ${PAGINA_INICIAL}

Quando ele clica em Novo
    Espera o elemento e clica nele    ${B_NOVO}
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
    Espera o elemento e verifica conteúdo    ${DESCRICAO}    1421
    Espera o elemento e verifica conteúdo    ${UNIDADE}    1421
    Espera o elemento e verifica conteúdo    ${GRUPO}    1421
    Espera o elemento e verifica conteúdo    ${QUANTIDADE}    1421
    Espera o elemento e verifica conteúdo    ${VALUNIT}    1421
    Espera o elemento e verifica conteúdo    ${LOTE}    1421
#03
Quando ele clica em Entrada
    Espera o elemento e clica nele    ${B_ENTRADA}
E preenche o campo Adicionar Estoque
    Espera o elemento e inputa um texto    ${C_ADD_ESTOQUE}    6.0
Então deve ser possível acrescentar um produto com sucesso
    Espera o elemento e verifica conteúdo    ${QUANTIDADE}    7.0

#04
Quando ele clica em Saída
    Espera o elemento e clica nele    ${B_SAIDA}
E preenche o campo Diminuir Estoque
    Espera o elemento e inputa um texto    ${C_DIM_ESTOQUE}    1.0
Então deve ser possível decrementar um produto com sucesso
    Espera o elemento e inputa um texto    ${QUANTIDADE}     5.0

#5
Quando ele clica em editar

E altera o campo Descrição

E altera o campo Quantidade
    
E altera o campo Val.Unit

Então deve ser possível editar um produto com sucesso

#6


#7

#8

#9

#10

#11

#12
