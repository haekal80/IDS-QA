*** Settings ***
Library     SeleniumLibrary
Resource    ../../driver/config.robot
Resource    ../../steps/HomeSteps/HomeStep.robot

*** Variables ***
${Username_Field}        //input[@name="username"]
${Password_Field}        //input[@name='password']
${Login_Button}          //button[@type="submit"]    
${Profile}         //*[contains(text(),'${USERNAME}')]

*** Keywords ***
Login Page IDS Opened
    Go To                            ${URL_IDS}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Element Should Be Visible        ${LOGIN_BUTTON}
    Capture Page Screenshot          EMBED

Input Username Field
    Input Text                       ${USERNAME_FIELD}    ${USERNAME}
    Capture Page Screenshot          EMBED

Input Password Field
    Input Text                       ${PASSWORD_FIELD}    ${PASS}
    Capture Page Screenshot          EMBED

Click Login Button IDS
    Click Element                    ${LOGIN_BUTTON}
    Sleep    5s    

Verify Login Success
    Wait Until Element Is Visible    ${Profile}
    Element Should Be Visible        ${Profile}
    Capture Page Screenshot    EMBED