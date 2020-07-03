*** Settings *** 
Documentation    Ejemplo de mi primer Test con Selenium - Login miOrangeApp Movilizado
#Incluimos la libreria de Selenium
Library  SeleniumLibrary

*** Variables ***
#definimos una variable de tipo Texto donde almacenaremos el navegador a utilizar
${BROWSER1}  firefox
${BROWSER2}  chrome
#definimos una variable de tipo Texto donde almacenaremos la URL de acceso
#${URL}    https://areaprivada.orange.es/movilizado/index.html
${URL}    https://www.orange.es/
#Definimos una variable de tipo Diccionario donde almacenaremos las credenciales
&{CREDENTIALS}    MSISDN=653318178    PASS=12345678

***Test Cases*
Login chrome
    #escribimos las instrucciones que la libreria selenium me proporciona para abrir el navegador
    Open Browser    ${URL}    ${BROWSER2}
    Sleep    2
    Capture Page Screenshot
    Click Element   xpath=//*[contains(text(), 'La TV que quiero')] 
    Sleep    2
    Capture Page Screenshot
    [Teardown]    Close All Browsers


Login firefox
    #escribimos las instrucciones que la libreria selenium me proporciona para abrir el navegador
    Open Browser    ${URL}    ${BROWSER1}
    Sleep    2
    Capture Page Screenshot
    Click Element   xpath=//*[contains(text(), 'Internet y fijo')] 
    Sleep    2
    Capture Page Screenshot
    [Teardown]    Close All Browsers