*** Settings ***

Resource  ../comom/main.robot

Test Setup      efetuar login autenticator
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1: Acessar Dashboard
  [Tags]  DASHBOARD
  Dado que Acesso o Dashboard
  Quando clicar na nova aba
  E clico em fechar Notas de Atualizações