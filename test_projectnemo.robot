*** Settings ***

Resource          _resource.robot
Test Teardown     Close All Browsers


*** Test Cases ***

Open Site Test
    Open Browser  ${URL EXPLORER}  ${BROWSER}
    Wait Until Page Contains Element  ${LOGO}  10

Search Input Enter Test
    Open Browser  ${URL EXPLORER}  ${BROWSER}
    Input Text  ${SEARCH INPUT}  ${SEARCH QUERY}
    Press Key  ${SEARCH INPUT}  \\13
    Page Should Contain Link  ${QUERY LINK}

#Search Input Button Test
# Don't test it for now because of the bug.
# Waiting for bug fixes
    #Input Text  ${SEARCH INPUT}  ${SEARCH QUERY}
    #Click Element  ${SEARCH BUTTON}
    #Page Should Contain Link  ${QUERY LINK}

Explorer Page And Table Test
    Open Browser  ${URL EXPLORER}  ${BROWSER}
    Element Should Contain  ${TABLE ROW}  ${QUERY LINK}  not started  ${SEARCH QUERY}
    Page Should Contain  Proceed

Proseed Button Explorer-Vacancies Test
    Open Browser  ${URL EXPLORER}  ${BROWSER}
    Click Link  ${BUTTON PROCEED}
    Page Should Contain  ${JOB TITLE 1}
    Page Should Contain Link  ${JOB LINK 1}

Vacancies Page And Table Test
    Open Browser  ${URL VACANCIES}  ${BROWSER}
    Element Should Contain  ${TABLE ROW 1}  ${JOB TITLE 1}  ${JOB COMPANY 1}  finished
    Element Should Contain  ${TABLE ROW 2}  ${JOB TITLE 2}  ${JOB CITY 2}  finished
    Page Should Contain  Proceed

Edit Vacancy Popup Text Test
    Open Browser  ${URL VACANCIES}  ${BROWSER}
    Click Element  ${EDIT VACANCY 2 OPEN}
    Element Should Be Visible  ${EDIT POPUP}
    # Will test with status not started untill waiting for bug fixes (status should be finished)
    Element Should Contain  ${STATUS}  not started
    Textfield Value Should Be  ${TITLE}  ${JOB TITLE 2}
    Textfield Value Should Be  ${COMPANY}  ${JOB COMPANY 2}
    Textfield Value Should Be  ${CITY}  ${JOB CITY 2}
    Page Should Contain  Save
    Click Link  ${CLOSE EDIT POPUP}
    Wait Until Element Is Not Visible  ${EDIT POPUP}
    Element Should Not Be Visible  ${EDIT POPUP}

Edit Vacancy Popup Editing Test
    Open Browser  ${URL VACANCIES}  ${BROWSER}
    Click Element  ${EDIT VACANCY 3 OPEN}
    Select From List By Value  ${STATUS}  1
    Input Text  ${TITLE}  Test Developer Vacancy
    Input Text  ${COMPANY}  Test Company
    Input Text  ${CITY}  Test City
    Click Element  update
    Element Should Contain  ${TITLE AT TABLE}  Test Developer Vacancy
    Element Should Contain  ${COMPANY AT TABLE}  Test Company
    Element Should Contain  ${CITY AT TABLE}  Test City
    Element Should Contain  ${STATUS AT TABLE}  in progress

Delete Vacancy Button Test
    Open Browser  ${URL VACANCIES}  ${BROWSER}
    Click Element  ${DELETE VACANCY}
    Page Should Not Contain  ${JOB LINK 1}  ${JOB TITLE 1}

Vacancy Description Popup Test
    Open Browser  ${URL VACANCIES}  ${BROWSER}
    Click Element  ${DESCRIPTION OPEN 1}
    Element Should Be Visible  ${DESCRIPTION POPUP}
    Page Should Contain  ${DESCRIPTION TEXT 1}
    Click Link  ${DESCRIPTION CLOSE}
    Wait Until Element Is Not Visible  ${DESCRIPTION POPUP}
    Element Should Not Be Visible  ${DESCRIPTION POPUP}

Proseed Button Vacancies-Words Test
    Open Browser  ${URL VACANCIES}  ${BROWSER}
    Click Link  ${BUTTON PROCEED}
    Page Should Contain  Choose skills!
    Element Should Contain  ${FIRST WORD PATH}  ${FIRST WORD}
    Element Should Contain  ${FIRST WORD QUANTITY PATH}  ${FIRST WORD QUANTITY}
    Page Should Contain  ${TEST WORD}

Delete Word Button Test
    Open Browser  ${URL WORDS}  ${BROWSER}
    Click Element  ${DELETE WORD 2}
    Element Should Contain  ${WORD 2 QUANTITY}  ${TEST WORD 2 QUANTITY}
    Element Should Contain  ${WORD 2}  ${TEST WORD 2}

Check And Save Skill Test
    Open Browser  ${URL WORDS}  ${BROWSER}
    Select Checkbox  ${CHECKBOX 1}
    Click Element  ${BUTTON SAVE}
    Reload Page
    Checkbox Should Be Selected  ${CHECKBOX 1}
    Checkbox Should Not Be Selected  ${CHECKBOX 2}

# Waiting for bug fixes here
#Unheck And Save Skill Test
#    Open Browser  ${URL WORDS}  ${BROWSER}
#    Click Element  ${UN CHECKBOX 1}
#    Click Element  ${BUTTON SAVE}
#    Reload Page
#    Checkbox Should Not Be Selected  ${CHECKBOX 1}
#    Checkbox Should Not Be Selected  ${CHECKBOX 2}

Bread Crumbs Test
    Open Browser  ${URL}  ${BROWSER}
    Click Element  ${BREADCRUMBS VACANCIES}
    Page Should Contain  ${JOB LINK 2}  ${JOB TITLE 2}
    Click Link  ${BREADCRUMBS WORDS}
    Page Should Contain  Choose skills!
    Click Link  ${BREADCRUMBS HOME}
    Page Should Contain  ${QUERY LINK}

Main Page Table After Proceeding Explorer Test
    Open Browser  ${URL}  ${BROWSER}
    Element Should Contain  ${TABLE ROW}  ${QUERY LINK}  finished  ${SEARCH QUERY}

Edit Query On Main Page Text Test
    Open Browser  ${URL}  ${BROWSER}
    Click Element  ${EDIT QUERY}
    Element Should Be Visible  ${EDIT POPUP}
    # Will test with status not started untill waiting for bug fixes (status should be finished)
    Element Should Contain  ${STATUS}  not started
    Textfield Value Should Be  ${TITLE}  ${SEARCH QUERY}
    Page Should Contain  Save
    Click Link  ${CLOSE EDIT POPUP}
    Wait Until Element Is Not Visible  ${EDIT POPUP}
    Element Should Not Be Visible  ${EDIT POPUP}

Edit Query On Main Page Editing Test
    Open Browser  ${URL}  ${BROWSER}
    Click Element  ${EDIT QUERY}
    Select From List By Value  ${STATUS}  1
    Input Text  ${TITLE}  Test Title
    Click Element  update
    Element Should Contain  ${QUERY TITLE}  Test Title
    Element Should Contain  ${QUERY STATUS}  in progress

Delete Query On Main Page Test
    Open Browser  ${URL}  ${BROWSER}
    Click Element  ${DELETE QUERY}
    Page Should Not Contain  ${QUERY LINK}  ${SEARCH QUERY}


