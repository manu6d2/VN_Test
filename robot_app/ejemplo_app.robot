*** Settings *** 
Documentation    Ejemplo de mi primer Test con Selenium - Login miOrangeApp Movilizado
#Incluimos la libreria de Selenium
Library    SeleniumLibrary

*** Variables ***
#definimos una variable de tipo Texto donde almacenaremos el navegador a utilizar
${BROWSER1}     chrome
${BROWSER2}     chrome

#definimos una variable de tipo Texto donde almacenaremos la URL de acceso
#${URL}    https://areaprivada.orange.es/movilizado/index.html
${URL}    https://areaprivada.orange.es/movilizado/index.html#/init
${URL2}    https://www.google.es

#Definimos una variable de tipo Diccionario donde almacenaremos las credenciales
&{CREDENTIALS}    MSISDN=653318178    PASS=12345678

***Test Cases*
Test en chrome
    #escribimos las instrucciones que la libreria selenium me proporciona para abrir el navegador
    Open Browser    ${URL}    ${BROWSER1}
    Set Window Size    400    800
    Set Window Position    0    0
    Sleep    1
    Set Browser Implicit Wait    30
    Input Text    Id=tag_ut_input_msisdn    &{CREDENTIALS}[MSISDN]
    Input Text    Id=tealeaf_user_password     &{CREDENTIALS}[PASS]
    Click Button    Id=tag_ut_button_msisdn
    Sleep    1
    Click Button    Id=tag_ut_button_menu_main
    Sleep    1
    Capture Page Screenshot
    [Teardown]    Close All Browsers
    
Test en google
    #escribimos las instrucciones que la libreria selenium me proporciona para abrir el navegador
    open browser                      ${URL2}  ${BROWSER2}
    wait until page contains          ${URL2}
    input text                        name=q  Renovar movil prepago con Orange
    Sleep    2
    Click Element                      name=btnK
    Sleep    5
    wait until page contains         Renovar movil prepago con Orange
    Capture Page Screenshot
    [Teardown]    Close All Browsers
