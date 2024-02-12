*** Settings ***
Resource    ../../pages/LoginPage/LoginPage.robot

*** Keywords ***
Input Username and Password IDS
    Input Username Field
    Input Password Field
    Click Login Button IDS