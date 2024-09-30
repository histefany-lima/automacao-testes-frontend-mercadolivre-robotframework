*** Settings ***
Library           SeleniumLibrary
Resource         ../steps/homeSteps.robot
Resource         ../steps/searchSteps.robot
Resource         ../steps/productSteps.robot

*** Test Cases ***
CENÁRIO 1. Valido inclusão de produto no carrinho com sucesso 
    Dado que acesso a página do Mercado Livre
    E faço uma busca por "Tintas Coral" na barra de pesquisa 
    E seleciono a segunda opção da lista de produtos retornada
    Quando clico em Adicionar ao carrinho
#     Então valido que produto foi adicionado com sucesso 

# CENÁRIO 2. Valido exclusão de produto do carrinho com sucesso 
#     Dado que acesso a página do Mercado Livre 
#     E tenho um produto no meu carrinho 
#     Quando clico em "Excluir"
#     Então valido que meu carrinho está vazio 
#     E valido mensagem "Pronto, você excluiu o produto"