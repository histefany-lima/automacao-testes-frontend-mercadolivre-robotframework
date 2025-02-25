*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}                https://www.mercadolivre.com.br/
${barraNavegacao}     //*[@class="nav-bounds nav-bounds-with-cart"]


*** Keywords ***
Acesso a página do Meli 
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Valido que pagina abriu corretamente 
    Wait Until Page Contains Element    ${barraNavegacao}    15s    Página não carregou. 

    
