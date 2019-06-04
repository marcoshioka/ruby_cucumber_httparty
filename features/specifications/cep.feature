#language: pt

@cep
Funcionalidade: Manter dados de Cep
Como usuário do sistema
Eu quero realizar as requisições na API
Afim de manipular as informações de CEP

Esquema do Cenário: Consultar Cep
Dado o endereço da API para manter o cadastro de CEP
Quando realizar uma requisição para consultar o CEP '<cep>'
Então a API irá retornar os dados de consulta dos CEPS respondendo o código 200
E com o endereço '<logradouro>'

Exemplos:
|cep      |logradouro                |
|03613000 |Rua Enéas de Barros       |
|04218040 |Rua Almirante Mariath     |
|04248000 |Rua Salvador Pires de Lima|
|03651120 |Rua Nilza                 |  
|03651050 |Rua Canguaretama          |  
