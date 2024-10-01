*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/homePage.robot


*** Keywords ***
Dado que acesso a página do Mercado Livre
    Acesso a página do Meli
    Valido que pagina abriu corretamente

E faço uma busca por "Tintas Coral" na barra de pesquisa 
    Preencho campo de busca com "Tintas Coral"
    

