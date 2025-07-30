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
    Close Browser


Login com falha
    [Documentation]
    Open Browser    ${URL}  chrome
    Input Text 	    id=username     ${USERNAME}
    Input Text 	    id=password     senhaErrada123
    Click Button 	css=.radius
    Page Should Contain 	 Your password is invalid!
    Close Browser