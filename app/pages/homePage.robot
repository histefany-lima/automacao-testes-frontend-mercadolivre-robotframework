*** Settings ***
Library           SeleniumLibrary
Resource          ../baseResources/resources.robot

*** Variables ***
${barraPesquisa}    //*[@id="cb1-edit"]
${botaoPesquisar}   //*[@class="nav-search-btn"]

*** Keywords ***
Preencho campo de busca com "Tintas Coral"
    Log To Console  Preenchendo campo de busca com "Tintas Coral"
    Input Text      ${barraPesquisa}    Tintas Coral
    Capture Page Screenshot
    Log To Console  Clicando no botão Pesquisar
    Click Element   ${botaoPesquisar}    


 

