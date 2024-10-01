*** Settings ***
Library           SeleniumLibrary
Resource          ../baseResources/resources.robot

*** Variables ***
${botaoAdicionarAoCarrinho}  //*[@id=":R2cqakck4um:"]
*** Keywords ***
Clico em Adicionar ao carrinho
    Click Element    ${botaoAdicionarAoCarrinho}
    Capture Page Screenshot

Valido redirect para pagina de cadastro/login
    Log To Console  Validando redirecionamento para página de cadastro/login 
    Page Should Contain    Olá! Para adicionar ao carrinho, acesse a sua conta






