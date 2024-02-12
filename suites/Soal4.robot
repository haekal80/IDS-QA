*** Settings ***
Resource        ../driver/resources.robot
Resource        ../features/IDSFeature/00_Login/Login.robot
Resource        ../features/IDSFeature/01_BulkUpload/BulkUpload.robot

Test Setup       Open Browser Using Chrome Browser
Test Teardown    Close Page Browser

*** Test Cases ***
01 User Add Data Upload
    Login Page IDS Opened
    Login with Valid Credentials IDS
    Move To Bulk Upload Page
    User Add Data Upload on Bulk Upload Page