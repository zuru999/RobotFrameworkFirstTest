*** Settings ***
Library  Selenium2Library
Suite Setup     Open browser    ${HOMEPAGE}     ${BROWSER}
Test Setup  Go to  ${HOMEPAGE}
Suite Teardown  Close all browsers
Documentation  Demonstration Selenium2Library by googling.

*** Variables ***
${HOMEPAGE}     http://google.pl
${BROWSER}      chrome

*** Test Cases ***


Google devops and find eficode
    [Tags]  devops
    Google and check results    devops  wikipedia.org/wiki/DevOps

Google devo and find its web site
    [Tags]  devo
    Google and check results    deveo   deveo.com

Google robot and find its web site
    [Tags]  robot   devo
    Google and check results    robot framework     robotframework.org



*** Keywords ***
Google and check results
    [Arguments]     ${searchkey}    ${results}
    input text      id=lst-ib       ${searchkey}
#    click element   name=btnK
    press key  id=lst-ib    \\13
    wait until page contains        ${results}
#   capture page screenshot  file.jpg







