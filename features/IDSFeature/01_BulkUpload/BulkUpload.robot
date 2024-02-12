*** Settings ***
Resource    ../../../pages/HomePage/HomePage.robot
Resource    ../../../steps/BulkUploadSteps/BulkUploadStep.robot

*** Keywords ***
User Add Data Upload on Bulk Upload Page
    GIVEN Home Page IDS Opened
    WHEN Add Data Upload "contoh"
    Then Verify Add Data Success