*** Settings ***
Resource    ../../pages/BulkUploadPage/BulkUploadPage.robot

*** Keywords ***
Add Data Upload "${Name}"
    Click Data Upload Button
    Input Name Field    ${Name}
    Click Submit Button