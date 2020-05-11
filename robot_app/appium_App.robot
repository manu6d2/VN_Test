# This sample code uses the Appium robot client
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with robot
#
#  more keywords on: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html

*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${deviceName}    52007ec2fee125b5
${platformName}    android
${noReset}    True

*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   deviceName=${deviceName}  platformName=${platformName}  noReset=${noReset}
    # xpath=//android.widget.FrameLayout[@content-desc="Outlook"]/android.widget.ImageView[1]
    Capture Page Screenshot
    #Click Element    xpath=//android.widget.FrameLayout[@content-desc="Outlook"]/android.widget.ImageView[1]
    # xpath=//android.widget.FrameLayout[@content-desc="Mi Orange"]/android.widget.ImageView[1]
    Click Element    xpath=//android.widget.FrameLayout[@content-desc="Mi Orange"]/android.widget.ImageView[1]
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.ListView/android.view.View[1]/android.widget.ListView/android.view.View/android.widget.Image
    Sleep    30
    Capture Page Screenshot
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.ListView/android.view.View[1]/android.widget.ListView/android.view.View/android.widget.Image
    Sleep    10
    Capture Page Screenshot
    Sleep    2
    Close Application
