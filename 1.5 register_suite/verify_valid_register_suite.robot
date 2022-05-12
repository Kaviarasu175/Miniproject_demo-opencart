*** Settings ***
Documentation   this suite will handle valid credential

Resource    ../1.1 resource/common_functionality.resource
Test Setup   Launch Browser
Test Template     valid register template


*** Test Cases ***
TC1  Kavi  Arasu  kedi0717@gmail.com  9787612241  kavi123  kavi123
TC2  kavi  kavi   kaviarasu1705@gmail.com  9787383399  kavi111  kavi111


*** Keywords ***
 valid register template
   [Arguments]  ${firstname}  ${lastname}  ${email}  ${telephone}  ${password}  ${confirm password}
   Click Element    xpath=//a[@title='My Account']
   Click Element    xpath=//a[text()='Register']
   Input Text       id=input-firstname    ${firstname}
   Input Text       id=input-lastname     ${lastname}
   Input Text       id=input-email        ${email}
   Input Text       id=input-telephone    ${telephone}
   Input Password   id=input-password     ${password}
   Input Password   id=input-confirm     ${confirm password}
   Select Checkbox  xpath=//input[@type='checkbox']
   Click Element    xpath=//input[@type='submit']





