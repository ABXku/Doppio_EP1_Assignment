*** Settings ***
Library     SeleniumLibrary

*** Test cases ***
Enter your username, password, and nickname. From the drop-down menu, select "Doppio". Click the checkbox that says "Robot is easy" and click the button.
    Open Browser    file:///Users/cindyz/doppio/ep01/ep01_small_excercise.html      browser=chrome
    ...     options=add_experimental_option("detach", True)
    Input Text      id=username-box                      MyUsername
    Input Text      xpath=//div[@v='password']/input     MyPassword
    Input Text      xpath=//input[@doppio="nickname"]    Karn
    Select From List By Value       id=company           doppio 
    Click element   id=op1
    Click element   id=use-me

