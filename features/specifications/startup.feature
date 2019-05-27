#language: pt

@startup
Funcionalidade: Manter dados de Startup através da API
Como usuário do sistema
Eu quero realizar as requisições na API
Afim de manipular as informações do cadastro de startup

Cenário: Cadastrar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para cadastar uma startup
    Então a API irá retornar os dados do cadastro da Startup respondendo o código 200

Cenário: Consultar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para consultar uma startup
    Então a API irá retornar os dados de consulta da Startup respondendo o código 200    