*** Settings ***

Resource  ../comom/main.robot

*** Variables ***

${CAMPO_USUARIO}  id=email
${BTN_CONTINUAR}  //*[@id="root"]/div/div[1]/div[1]/form/button/span
${CAMPO_PASSWORD}  id=password
${CONECTAR}  //*[@id="root"]/div/div/div[1]/form/button/span
${PAGINA_INICIAL}  //*[@id="root"]/div/div[2]/div/div/header/h3




*** Keywords ***

estou na pagina da autenticator
    Wait Until Element Is Visible  ${CAMPO_USUARIO}

digito o login do usuario
    Wait Until Element Is Visible  ${CAMPO_USUARIO}
    Click Element  ${CAMPO_USUARIO}
    Input Text  ${CAMPO_USUARIO}   ${USUARIO.EMAIL}

clico no botao continuar
    Wait Until Element Is Visible  ${BTN_CONTINUAR}  
    Click Element  ${BTN_CONTINUAR}      

digito a senha
    Wait Until Element Is Visible  ${CAMPO_PASSWORD} 
    Click Element  ${CAMPO_PASSWORD} 
    Input Text  ${CAMPO_PASSWORD}   ${USUARIO}[PASSWORD]

clico no botao conectar
    Wait Until Element Is Visible  ${CONECTAR}
    Click Element  ${CONECTAR} 

vejo a pagina inicial
    Wait Until Element Is Visible  ${PAGINA_INICIAL}
            