*** Settings ***

Resource     ../base.robot

*** Variables ***

${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     14
${ANDROID_APP_PACKAGE}          br.com.pztec.estoque
${ANDROID_APP_ACTIVITY}         .Inicio

*** Keywords ***
Abrir App

TearDown