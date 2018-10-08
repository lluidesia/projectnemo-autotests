
*** Settings ***
Library      Selenium2Library  30  15

*** Variables ***
${BROWSER}        Chrome
${URL}      http://localhost/
${SEARCH INPUT}     css=.search-bar input
${SEARCH BUTTON}    css=.submit-btn
${URL EXPLORER}     http://localhost/pages/explorer.php
${URL VACANCIES}    http://localhost/pages/vacancy.php
${URL WORDS}    http://localhost/pages/words.php

${LOGO}  css=.logo-box_text


${TABLE ROW}  css=.row
${BUTTON PROCEED}  css=.btn__proceed

${TABLE ROW 1}  xpath=/html/body/main/div/table/tbody/tr[1]
${TABLE ROW 2}  xpath=/html/body/main/div/table/tbody/tr[2]

${EDIT VACANCY 2 OPEN}  css=tr.row:nth-child(2) > td:nth-child(7) > a:nth-child(1) > img:nth-child(1)
${EDIT VACANCY 3 OPEN}  xpath=/html/body/main/div/table/tbody/tr[3]/td[7]/a[1]/img
${EDIT POPUP}  xpath=/html/body/div[2]/div
${CLOSE EDIT POPUP}  css=.popup__close

${STATUS}  css=div.input-group:nth-child(2) > select:nth-child(2)
${TITLE}  xpath=/html/body/div[2]/div/form/div[2]/input
${COMPANY}  xpath=/html/body/div[2]/div/form/div[3]/input
${CITY}  xpath=/html/body/div[2]/div/form/div[4]/input

${TITLE AT TABLE}   xpath=/html/body/main/div/table/tbody/tr[3]/td[3]
${COMPANY AT TABLE}  xpath=/html/body/main/div/table/tbody/tr[3]/td[4]
${CITY AT TABLE}  xpath=/html/body/main/div/table/tbody/tr[3]/td[5]
${STATUS AT TABLE}  xpath=/html/body/main/div/table/tbody/tr[3]/td[6]

${DELETE VACANCY}  xpath=/html/body/main/div/table/tbody/tr[1]/td[7]/a[2]/img

${DESCRIPTION OPEN 1}  xpath=/html/body/main/div/table/tbody/tr[1]/td[7]/a[3]/img
${DESCRIPTION POPUP}  xpath=/html/body/div[3]/div
${DESCRIPTION CLOSE}  css=.description__close

${FIRST WORD PATH}  xpath=/html/body/main/div/form/table/tbody/tr[1]/td[3]
${FIRST WORD QUANTITY PATH}  xpath=/html/body/main/div/form/table/tbody/tr[1]/td[4]

${CHECKBOX 1}  xpath=/html/body/main/div/form/table/tbody/tr[1]/td[1]/input
${CHECKBOX 2}  xpath=/html/body/main/div/form/table/tbody/tr[2]/td[1]/input
${UN CHECKBOX 1}  css=input:nth-child(1)

${BUTTON SAVE}  css=.btn__save

${BREADCRUMBS HOME}  css=.breadcrumbs > li:nth-child(1) > a:nth-child(1)
${BREADCRUMBS VACANCIES}  xpath=/html/body/div[1]/div/ul/li[2]/a
${BREADCRUMBS WORDS}  css=.breadcrumbs > li:nth-child(3) > a:nth-child(1)

${EDIT QUERY}  xpath=/html/body/main/div/table/tbody/tr/td[6]/a[1]/img
${QUERY TITLE}  xpath=/html/body/main/div/table/tbody/tr/td[4]
${QUERY STATUS}  xpath=/html/body/main/div/table/tbody/tr/td[3]
${DELETE QUERY}  xpath=/html/body/main/div/table/tbody/tr/td[6]/a[2]
${DELETE WORD 2}  xpath=/html/body/main/div/form/table/tbody/tr[2]/td[6]/a/img


${SEARCH QUERY}  perl

${QUERY LINK}  https://www.work.ua/jobs-perl/?page=1

${JOB LINK 1}  https://www.work.ua/jobs/3320851/
${JOB TITLE 1}  Perl developer
${JOB COMPANY 1}  AMC Bridge
${JOB CITY 1}  Черновцы

${JOB LINK 2}  https://www.work.ua/jobs/3320850/
${JOB TITLE 2}  Perl developer
${JOB COMPANY 2}  AMC Bridge
${JOB CITY 2}  Сумы

${JOB LINK 3}  https://www.work.ua/jobs/3320839/
${JOB TITLE 3}  Perl developer
${JOB COMPANY 3}  AMC Bridge
${JOB CITY 3}  Днепр

${DESCRIPTION TEXT 1}  AMC Bridge

${FIRST WORD}  and
${FIRST WORD QUANTITY}  37
${TEST WORD}   experience

${WORD 2}  xpath=/html/body/main/div/form/table/tbody/tr[2]/td[3]
${WORD 2 QUANTITY}  xpath=/html/body/main/div/form/table/tbody/tr[2]/td[4]
${TEST WORD 2}  of
${TEST WORD 2 QUANTITY}  19


