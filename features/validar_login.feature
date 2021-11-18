#language: pt
#utf-8

Funcionalidade: Validar login
Eu como usuário da sourcedemo
Quero fazer um login no site
Para ver se está logando no sistema

@valido
Cenário: Realizar Login valido
  Dado que acesso o site da sourcedemo
  Quando digitar o usuario "standard_user" e a senha "secret_sauce"
  Entao consigo validar o login com sucesso

@invalido
Cenário: Realizar Login invalido
  Dado que acesso o site da sourcedemo
  Quando digitar o usuario "locked_out_user" e a senha "secret_sauce"
  Entao consigo validar o login com invalido