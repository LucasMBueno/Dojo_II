#language: pt
#utf-8

Funcionalidade: Validar login
Eu como usuário da sourcedemo
Quero fazer um login no site
Para ver se está logando no sistema

Contexto: Usuario acessa a home do sourcedemo
  * que acesso o site da sourcedemo

@valido
Esquema do Cenário: Realizar Login valido
  Quando digitar o "<usuario>" e a "<senha>"
  Entao consigo validar o login com sucesso

  Exemplos: 
  |usuario      | senha      |
  |standard_user|secret_sauce|


@invalido
Esquema do Cenário: Realizar Login invalido
  Quando digitar o "<usuario>" e a "<senha>"
  Entao consigo validar o login com invalido

  Exemplos:
  |usuario        | senha      |
  |locked_out_user|secret_sauce|

#IDEAL
# @login
# Esquema do Cenário: Validar Login
#   Quando digitar o "<usuario>" e a "<senha>"
#   Entao consigo validar o login com "<status>"

#   @valido
#   Exemplos:
#   |usuario        | senha      | status  |
#   |standard_user  |secret_sauce| sucesso |

#   @invalido
#   Exemplos:
#   |usuario        | senha      | status  |
#   |locked_out_user|secret_sauce| invalido|