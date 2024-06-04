*** Settings ***
Library    AppiumLibrary
Resource    

# UTILS
Resource     utils/commons.robot
Resource     utils/config.robot

#PAGES
Resource    pages/produtos.page.robot
Resource    pages/backup.page.robot
Resource    pages/export.page.robot
Resource    pages/import.page.robot
Resource    pages/report.page.robot
Resource    pages/restore.page.robot
