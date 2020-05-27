*** Settings *** 
Documentation    Ejemplo de mi primer Test con Selenium - Login miOrangeApp Movilizado
#Incluimos la libreria de Selenium
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
#definimos una variable de tipo Texto donde almacenaremos el navegador a utilizar

${BROWSER}  chrome
#definimos una variable de tipo Texto donde almacenaremos la URL de acceso
#${URL}    https://areaprivada.orange.es/movilizado/index.html
${URL}    https://www.orange.es/
#Definimos una variable de tipo Diccionario donde almacenaremos las credenciales

***Test Cases*
Login chrome
    #escribimos las instrucciones que la libreria selenium me proporciona para abrir el navegador
    
    Open Browser    ${URL}    ${BROWSER}
    Capture Page Screenshot  filename=pepe{index}.png
    ${start} =  Get Current Date
    Wait Until Page Contains Element   xpath=//*[contains(text(), 'La TV que quiero')]
    ${stop} =   Get Current Date
    Mouse Over   xpath=//*[contains(text(), 'La TV que quiero')] 
    Sleep   10
    Click Element   xpath=//*[contains(text(), 'La TV que quiero')] 
    Capture Page Screenshot
    ${diff} =   Subtract Date From Date     ${stop}     ${start}
    Log    ${diff}
    [Teardown]    Close All Browsers