*** Settings ***
Documentation   This suite will handle invalid credential
...   test - TC_OH_2

Test Setup   Launch Browser
Resource    ../1.1 resource/common_functionality.resource
Test Teardown   Close Browser
Test Template   valid Credential Template


*** Test Cases ***
TC1  kaviarasu17@gmail.com  123456   Warning: No match for E-Mail Address and/or Password.
TC2  kavi11@gmail.com        111223   Warning: No match for E-Mail Address and/or Password.
*** Keywords ***
valid Credential Template
    [Arguments]  ${email_id}  ${password}  ${excpeted_error}
    Click Element    xpath=//a[@title='My Account']
    Click Element    link=Login
    Input Text       id=input-email    ${email_id}
    Input Text       id=input-password    ${password}
    Click Element    xpath=//input[@type='submit']
    Element Text Should Be    xpath=//div[@class='alert alert-danger alert-dismissible']  ${excpeted_error}