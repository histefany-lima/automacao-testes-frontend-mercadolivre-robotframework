*** Settings ***
Library           SeleniumLibrary
Resource         ../steps/homeSteps.robot
Resource         ../steps/searchSteps.robot
Resource         ../steps/productSteps.robot

*** Test Cases ***
CENÁRIO 1. Valido que ao tentar incluir produto no carrinho sem estar logado, é redirecionado para página de login
    Dado que acesso a página do Mercado Livre
    E faço uma busca por "Tintas Coral" na barra de pesquisa 
    E seleciono a segunda opção da lista de produtos retornada
    Quando clico em Adicionar ao carrinho
    Então valido redirecionamento para página de cadastro/login

# CENÁRIO 2. Valido exclusão de produto do carrinho com sucesso 
#     Dado que acesso a página do Mercado Livre 
#     E tenho um produto no meu carrinho 
#     Quando clico em "Excluir"
#     Então valido que meu carrinho está vazio 
#     E valido mensagem "Pronto, você excluiu o produto"