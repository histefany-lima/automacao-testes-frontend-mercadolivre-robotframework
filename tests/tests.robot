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

