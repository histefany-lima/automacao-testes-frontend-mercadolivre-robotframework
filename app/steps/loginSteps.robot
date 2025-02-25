*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/loginPage.robot


*** Keywords ***
E clico no botão Entrar
    Clica no botão entrar

E preencho os campos de login com usuário e senha válidos
    Preencho campo de email