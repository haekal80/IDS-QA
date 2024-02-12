*** Settings ***
Resource    ../../pages/LoginPage/LoginPage.robot
Resource    ../../pages/HomePage/HomePage.robot

*** Keywords ***
Open Home Page IDS
    Go To                            ${URL_IDS}
    Home Page IDS Opened

Move To Bulk Upload Page
    Click Sidebar Icon
    Log To Console    "masuk ke sidebar icon"
    Click Setorku Menu
    Log To Console    "masuk ke setorku menu"
    Click Bulk Upload Menu