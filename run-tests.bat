@echo off
REM Script pour exécuter les tests du projet Maven sur Windows
REM Usage: run-tests.bat

echo.
echo ================================================
echo   Execution des tests unitaires - Maven
echo ================================================
echo.

REM Nettoyer les anciens tests
echo Nettoyage de la build precedente...
call mvnw.cmd clean

REM Exécuter les tests
echo.
echo Execution des tests...
call mvnw.cmd test

REM Vérifier le code de sortie
if %errorlevel% equ 0 (
    echo.
    echo Tests reussis!
    echo.
    echo Rapport des tests cree dans: target\surefire-reports\
    echo Ouvrez target\surefire-reports\index.html dans votre navigateur
) else (
    echo.
    echo Certains tests ont echoue!
    echo.
    echo Rapport des tests cree dans: target\surefire-reports\
    echo Consultez les rapports pour plus de details
    exit /b 1
)
