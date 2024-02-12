*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${DataUpload_BTN}        //button[text()="ADD DATA UPLOAD"]
${Name_Field}            //input[@name="filename"]
${Submit_BTN}            //button[@type="button" and text()="SUBMIT"]
${Success_MSG}           //div[@class="MuiAlert-message css-1xsto0d" and text()="Success"]

*** Keywords ***
Click Data Upload Button
    Click Element    ${DataUpload_BTN}

Click Submit Button
    Click Element    ${Submit_BTN}

Input Name Field
    [Arguments]    ${Name}
    Set Suite Variable    ${Name}
    Input Text    ${Name_Field}    ${Name}
    Capture Page Screenshot    EMBED

Verify Add Data Success
    ${xpath} =    Set Variable    //div[@class="MuiDataGrid-virtualScrollerContent css-0"]/descendant::*[contains(text(), "${Name}")]    
    Wait Until Element Is Visible    ${xpath}
    Wait Until Element Is Visible    ${Success_MSG}
    Capture Page Screenshot    EMBED