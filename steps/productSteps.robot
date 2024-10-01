*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/productPage.robot


*** Keywords ***
Quando clico em Adicionar ao carrinho
    Clico em Adicionar ao carrinho
    
Então valido redirecionamento para página de cadastro/login
    Valido redirect para pagina de cadastro/login