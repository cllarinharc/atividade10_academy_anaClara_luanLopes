*** Settings ***

Resource    ../base.robot

*** Keywords ***    

Espera o elemento e verifica conteúdo
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible      ${elemento}
    Element Should Be Visible          ${elemento}        ${texto}

Espera o elemento e visualiza o conteúdo
    [Arguments]    ${elemento}
    Wait Until Element Is Visible      ${elemento}      

Espera o elemento e clica nele
    [Arguments]    ${elemento}
    Wait Until Element Is Visible      ${elemento}    
    Click Element                      ${elemento}

Espera o elemento e inputa um texto
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible      ${elemento} 
    Input Text                         ${elemento}        ${texto}

Verifica elemento
    [Arguments]    ${elemento}    
    FOR    ${counter}    IN RANGE    1    5
    ${STATUS}=    Run Keyword And Return Status    Element Should Be Visible    ${elemento}
        IF    '${STATUS}' == '${true}'
            Element Should Be Visible    ${elemento}
        END
    END
    IF    ${counter}>=5    Fail    Elemento nao encontrado

Espera o elemento, verifica o conteúdo e clica nele
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible      ${elemento}
    Element Should Be Visible          ${elemento}        ${texto}
    Click Element                      ${elemento}

Espera o elemento e espera que ele esteja habilitado
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Enabled        ${elemento}

Espera o elemento e espera que esteja desabilitado
    [Arguments]    ${elemento}
    Wait Until Element Is Visible     ${elemento}
    Element Should Be Disabled        ${elemento}
