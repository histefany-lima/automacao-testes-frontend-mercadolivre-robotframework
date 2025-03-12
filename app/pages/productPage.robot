*** Settings ***
Resource          ../baseResources/resources.robot

*** Variables ***
${botaoAdicionarAoCarrinho}  //html/body/main/div[2]/div[5]/div[2]/div[1]/div/div[1]/div/div[7]/form/div/button[2]/span


*** Keywords ***
Clico em Adicionar ao carrinho
    Log To Console  Clicando no botão Adicionar ao carrinho...
    Page Should Contain Element  ${botaoAdicionarAoCarrinho}
    Click Element    ${botaoAdicionarAoCarrinho}
    Capture Page Screenshot

Valido redirect para pagina de cadastro/login
    Log To Console  Validando redirecionamento para página de cadastro/login 
    Page Should Contain    Olá! Para adicionar ao carrinho, acesse a sua conta


    






