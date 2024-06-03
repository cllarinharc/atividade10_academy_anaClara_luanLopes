*** Settings ***
Library    AppiumLibrary
Resource    

# UTILS
Resource     ../utils/commons.robot
Resource     android/utils/config.robot

#PAGES
Resource    android/pages/produtos.page.robot
Resource    android/pages/backup.page.robot
Resource    android/pages/export-import.page.robot
Resource    android/pages/report.page.robot
