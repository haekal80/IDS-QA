*** Settings ***
Resource    ../../../pages/LoginPage/LoginPage.robot
Resource    ../../../steps/LoginSteps/LoginStep.robot
Resource    ../../../pages/HomePage/HomePage.robot

*** Keywords ***
Login with Valid Credentials IDS
    GIVEN Login Page IDS Opened
    WHEN Input Username and Password IDS
    THEN Home Page IDS Opened