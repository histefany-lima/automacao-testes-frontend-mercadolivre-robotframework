*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/searchPage.robot


*** Keywords ***
E seleciono a segunda opção da lista de produtos retornada
    Valido retorno da busca
    Clico na segunda opção da lista de produtos retornada