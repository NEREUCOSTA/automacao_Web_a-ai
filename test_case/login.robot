*** Settings ***

Resource  ../comom/main.robot

Test Setup      efetuar login autenticator
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1: Realizar Login no autenticator
  [Tags]  login
  Dado que estou na pagina da autenticator
  Quando digito o login do usuario 
  E clico no botao continuar
  E digito a senha
  E clico no botao conectar
  Então vejo a pagina inicial

