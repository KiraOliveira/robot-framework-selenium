*** Settings ***
Library    SeleniumLibrary
Resource   ../../repositórios/robot-framework-selenium/Resources/resources.robot

*** Test Cases ***

Login com sucesso
    [Documentation]    
    Open Browser    ${URL}  chrome
    Input Text 	    id=username     ${USERNAME}
    Input Text 	    id=password     ${PASSWORD}
    Click Button 	css=.radius
    Page Should Contain 	 You logged into a secure area!
 #   Close Browser

Logout
    [Documentation]    
    #Open Browser    ${URL}  chrome
    Page Should Contain 	 You logged into a secure area!
    Wait Until Page Contains    Secure Area
    Click Button 	href="/logout"
    Close Browser

Login com falha
    [Documentation]
    Open Browser    ${URL}  chrome
    Input Text 	    id=username     ${USERNAME}
    Input Text 	    id=password     senhaErrada123
    Click Button 	css=.radius
    Page Should Contain 	 Your password is invalid!
    Close Browser