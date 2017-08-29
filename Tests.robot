*** Settings ***
Library  Selenium2Library
Suite Setup  Go to homepage
Suite Teardown  Close all browsers
Documentation  Demonstration Selenium2Library by googling.

*** Variables ***
${HOMEPAGE}     http://google.pl
${BROWSER}      chrome

*** Test Cases ***
Google devops and find eficode
    Google and check results    devops  wikipedia.org/wiki/DevOps

*** Keywords ***
Google and check results
    [Arguments]     ${searchkey}    ${results}
    input text      id=lst-ib       ${searchkey}
#    click element   name=btnK
    press key  id=lst-ib    \\13
    wait until page contains        ${results}

Go to homepage
    Open browser    ${HOMEPAGE}     ${BROWSER}




