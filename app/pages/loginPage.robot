*** Settings ***
Library           SeleniumLibrary
Resource          ../baseResources/resources.robot

*** Variables ***
${botaoEntrar}            //*[@class="andes-button login-link andes-button--large andes-button--transparent"]/span
${campoEmail}             //*[@id="user_id"]
${email}                  ******
${campoSenha}             //*[@id="password"]
${senha}                  ******
${botaoContinuar}         //*[@class="andes-button enter-email-card__submit andes-button--large andes-button--loud andes-button--full-width"]

*** Keywords ***
Clica no botão entrar 
    Log To Console  Clicando no botão Entrar...
    Click Element    ${botaoEntrar} 
    Capture Page Screenshot
 
Preencho campo de email 
    Wait Until Page Contains    Olá! Para adicionar ao carrinho, digite seu e-mail ou telefone     10    Página não carregada
    Log To Console  Clico no botão Adicionar email...
    Page Should Contain Element  ${campoEmail}
    Input Text   ${campoEmail}  ${email}
    Log To Console  Email preenchido...  
    Capture Page Screenshot
    Press Keys    None    ENTER
    Capture Page Screenshot
    Log To Console  Tecla ENTER pressionada...
    Wait Until Page Contains  Digite sua senha do Mercado Livre  10  Input de senha não apareceu...
    Capture Page Screenshot
    Log To Console  Prenchendo senha...
    Page Should Contain Element  ${campoSenha}
    Input Text   ${campoSenha}  ${senha}
    Capture Page Screenshot
    Log To Console  Senha preenchida...
    