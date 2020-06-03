# This sample code uses the Appium robot client
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with robot
#
#  more keywords on: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html

*** Settings ***
Library    AppiumLibrary
Library    DateTime
Library    Process

*** Variables ***

${REMOTE_URL}   http://localhost:4723/wd/hub
${deviceName}    52007ec2fee125b5
${platformName}    android
${noReset}    True

*** Test Cases ***
Test case name
    Run process  C:/Program Files/Appium/Appium.exe  -p  4723
    Terminate process   C:/Program Files/Appium/Appium.exe  	kill=true
