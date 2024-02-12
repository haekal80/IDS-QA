*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../driver/config.robot
Resource    ../LoginPage/LoginPage.robot

*** Variables ***
${Sidebar_Icon}          //button[@type="button" and @aria-label="open drawer"]
${Setorku-Menu}          //span[text()="SetorKu"]/ancestor::div[@role="button"]
${BulkUplaod-Menu}       //span[text()="Bulk Upload"]/ancestor::div[@role="button"]

*** Keywords ***    
Home Page IDS Opened
    Wait Until Element Is Visible    ${Profile}
    Element Should Be Visible        ${Profile}
    Sleep    1s
    Capture Page Screenshot    EMBED

Click Setorku Menu
    Click Element    ${Setorku-Menu}

Click Bulk Upload Menu
    Click Element    ${BulkUplaod-Menu}

Click Sidebar Icon
    Click Element    ${Sidebar_Icon}