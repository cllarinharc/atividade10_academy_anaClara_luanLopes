*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot
Resource    ../pages/produtos.page.robot


*** Test Cases ***
TC:01-Deve ser possível cadastrar um produto com sucesso preenchendo todos os campos
    Dado que o cliente está na página inicial
    Quando ele clica em Novo
    E preenche o campo Código
    E preenche o campo Descrição
    E preenche o campo Unidade
    E preenche o campo Quantidade
    E preenche o campo Val.Unit
    E preenche o campo Lote
    E confirma operação
    Então deve ser possível cadastrar um produto com sucesso


TC:02-Deve ser possível cadastrar produto com sucesso preenchendo apenas Descriçaõ, Quantidade, Val.Unit
    Dado que o cliente está na página inicial
    Quando ele clica em Novo
    E preenche o campo Descrição
    E preenche o campo Quantidade
    E preenche o campo Val.Unit
    E confirma operação
    Então deve ser possível cadastrar um produto com sucesso

TC:03-Deve exibir opções de acrescentar quantidade ao estoque
    Dado que o cliente está na página inicial
    Quando ele clica em Entrada
    E preenche o campo Adicionar Estoque
    E confirma operação
    Então deve ser possível acrescentar um produto com sucesso

TC:04-Deve exibir opções de decrementar quantidade ao estoque
    Dado que o cliente está na página inicial
    Quando ele clica em Saída
    E preenche o campo Diminuir Estoque
    E confirma operação
    Então deve ser possível decrementar um produto com sucesso

TC:05-Deve ser possível editar as informações do produto com sucesso
    Dado que o cliente está na página inicial
    Quando ele clica em editar
    E altera o campo Descrição
    E altera o campo Quantidade
    E altera o campo Val.Unit
    E confirma operação
    Então deve ser possível editar um produto com sucesso
TC:06-Deve ser possível excluir produto do estoque
    Dado que o cliente está na página inicial
    Quando ele clica em excluir
    E confirma operação
    Então deve ser possível excluir um produto com sucesso
TC:07-Deve ser possível pesquisar por um produto com sucesso através da Quantidade
    Dado que o cliente está na página inicial
    Quando ele clica em pesquisar
    E preenche com um valor conhecido de Quantidade
    E confirma operação
    Então deve ser possível pesquisar um produto com sucesso
TC:08-Deve ser possível pesquisar por um produto com sucesso através da Unidade
    Dado que o cliente está na página inicial
    Quando ele clica em pesquisar
    E preenche com um valor conhecido de Unidade
    E confirma operação
    Então deve ser possível pesquisar um produto com sucesso
TC:09-Deve ser possível pesquisar por um produto com sucesso através da Descrição
    Dado que o cliente está na página inicial
    Quando ele clica em pesquisar
    E preenche com um valor conhecido de Descrição
    E confirma operação
    Então deve ser possível pesquisar um produto com sucesso
TC:10-Deve ser possível pesquisar por um produto com sucesso através da Val.Unit
    Dado que o cliente está na página inicial
    Quando ele clica em pesquisar
    E preenche com um valor conhecido de Val.Unit
    E confirma operação
    Então deve ser possível pesquisar um produto com sucesso
TC:11-Deve ser possível ver a própriedade ID e Grupo após cadastrar um produto
    Dado que o cliente está na página inicial
    Quando ele achar um produto
    Então deve ser possível identificar o campo ID 
    E deve ser possível identificar o campo Grupo

#BAD REQUEST
TC:12-Não deve ser possível cadastrar sem preencher os campos Descriçaõ, Quantidade, Val.Unit

TC:13-Não deve ser possível editar sem preencher os campos Descriçaõ, Quantidade, Val.Unit

TC:14-Não deve ser possível preencher os campo Quantidades Val.Unit sem ser número

TC:15-Não deve ser possível ficar com estoque negativo
