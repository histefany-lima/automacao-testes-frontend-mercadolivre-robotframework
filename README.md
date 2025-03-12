# Automação de Testes - Mercado Livre

Este repositório contém um projeto de automação de testes para o site do Mercado Livre, utilizando Robot Framework com Python. O projeto segue o padrão Page Objects e utiliza a sintaxe Gherkin para a escrita dos cenários de teste.

## Estrutura do Projeto

A estrutura do projeto é organizada da seguinte forma:

- **baseResources/**: Contém recursos compartilhados entre diferentes páginas.
- **pages/**: Contém os arquivos de definição de páginas, seguindo o padrão Page Objects.
- **steps/**: Contém os arquivos de definição de passos, que utilizam os keywords definidos nas páginas.
- **tests/**: Contém os arquivos de testes, escritos em Gherkin.

## Pré-requisitos

- Python >=3.8 
- Robot Framework
- SeleniumLibrary

## Executando os Testes

Para executar os testes, utilize o comando:
```sh
robot -d ./logs app\tests\tests.robot
