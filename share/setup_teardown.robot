*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${OPTIONS_CHROME}    add_experimental_option("excludeSwitches",["enable-logging"]);add_argument("--disable-popup-blocking");add_argument("--no-sandbox");add_argument("--disable-web-security"); add_argument("--ignore-certificate-errors");add_argument("--allow-insecure-localhost");add_argument("--allow-cross-origin-auth-prompt")


*** Keywords ***
abrir site
  Open Browser   https://hml.franqueadosthebest.com   chrome    
  Maximize Browser Window
  
*** Keywords ***
efetuar login autenticator
  abrir site
  estou na pagina da autenticator
  digito o login do usuario 
  clico no botao continuar
  digito a senha
  clico no botao conectar
  vejo a pagina inicial
  

fechar navegador
  Sleep  20s
  Close All Browsers

