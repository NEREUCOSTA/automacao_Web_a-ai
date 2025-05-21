*** Settings ***

Resource  ../comom/main.robot

*** Variables ***

${DASHBOARD}  //*[@id="root"]/div/div[2]/div/div/div/div/div[2]/div/div[2]/h2
${ACESSAR_DASHBOARD}  //*[@id="root"]/div/div[2]/div/div/div/div/div[2]/div/div[2]/button
${FECHAR_MODAL}    //div[contains(@class, 'ant-modal')]//button[contains(@class, 'ant-modal-close')]






*** Keywords ***
Acesso o Dashboard
    Wait Until Element Is Visible  ${ACESSAR_DASHBOARD}
    Click Element  ${ACESSAR_DASHBOARD}

clicar na nova aba
   Switch Window    title=Dashboard TheBestAcai
clico em fechar Notas de Atualizações
    Wait Until Element Is Visible    //button[text()="Ok"]
    Click Element    //button[text()="Ok"]   
   


