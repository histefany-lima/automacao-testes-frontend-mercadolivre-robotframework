*** Settings ***
Library           SeleniumLibrary
Resource          ../baseResources/resources.robot

*** Variables ***
${resultadoBusca}          //*[@class="ui-search-search-result"]
${segundoItemLista}        //*[@class="ui-search-layout__item"][2]
${botaoAdicionarCarrinho}  //*[@id=":R2cqakck4um:"]


*** Keywords ***
Valido retorno da busca 
    Page Should Contain Element  ${resultadoBusca}
    Capture Page Screenshot
    Log To Console   Busca realizada com sucesso

Clico na segunda opção da lista de produtos retornada
    Log To Console  Clicando na segunda opção da lista de produtos retornada...
    Click Element     ${segundoItemLista}
    Log To Console    Validando se o botão Adicionar ao carrinho está presente...
    Page Should Contain Element  ${botaoAdicionarCarrinho}
    Capture Page Screenshot
    Log To Console    Botão clicado com sucesso!...
