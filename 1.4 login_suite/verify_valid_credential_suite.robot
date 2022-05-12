*** Settings ***
Documentation   This suite will handle valid credential
...   test - TC_OH_2

Test Setup   Launch Browser
Resource    ../1.1 resource/common_functionality.resource
Test Teardown  Close Browser
Test Template   valid Credential Template

Library   DataDriver   file=../1.3 test_data/Book1.xlsx  sheet_name=valid_credential

*** Test Cases ***
TC1
*** Keywords ***
valid Credential Template
    [Arguments]  ${email_id}  ${password}
    Click Element    xpath=//a[@title='My Account']
    Click Element    link=Login
    Input Text       id=input-email    ${email_id}
    Input Text       id=input-password    ${password}
    Click Element    xpath=//input[@type='submit']
    Click Element    link=Modify your wish list
    Click Element    link=Continue