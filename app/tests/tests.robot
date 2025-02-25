*** Settings ***
Library           SeleniumLibrary
Resource         ../steps/homeSteps.robot
Resource         ../steps/searchSteps.robot
Resource         ../steps/productSteps.robot
Resource         ../steps/loginSteps.robot
Test Teardown    Close All Browsers

*** Test Cases ***
CENÁRIO 1. Valido que ao tentar incluir produto no carrinho sem estar logado, é redirecionado para página de login
    Dado que acesso a página do Mercado Livre
    E faço uma busca por "Tintas Coral" na barra de pesquisa 
    E seleciono a segunda opção da lista de produtos retornada
    Quando clico em Adicionar ao carrinho
    Então valido redirecionamento para página de cadastro/login

CENÁRIO 2. Valido Login com sucesso no Mercado Livre após redirect ao tentar incluir produto no carrinho sem estar logado
    Dado que acesso a página do Mercado Livre
    E faço uma busca por "Tintas Coral" na barra de pesquisa
    E seleciono a segunda opção da lista de produtos retornada
    Quando clico em Adicionar ao carrinho
    E clico no botão entrar
    E preencho os campos de login com usuário e senha válidos
    E clico em Entrar
    Então valido que o produto foi adicionado ao carrinho com sucesso
