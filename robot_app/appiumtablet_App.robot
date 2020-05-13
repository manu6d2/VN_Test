# This sample code uses the Appium robot client
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with robot
#
#  more keywords on: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html

*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${platformName}    android
${deviceName}    310091ae96f32400
${noReset}    True

*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   platformName=${platformName}  deviceName=${deviceName}  noReset=${noReset}
    # accessibility id=Mi Orange
    Sleep    10
    Capture Page Screenshot
    Click Element    xpath=//android.widget.TextView[@content-desc="Mi Orange"]
    Sleep    30
    Capture Page Screenshot

    Close Application