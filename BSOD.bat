REM Desliga o ECHO, Muda o titulo, UTF-8 e preferencias!
@echo off
title BSOD - ToolKit by Nicollas Feitosa
chcp 65001 
color f
cls

REM Menu Principal!
:Menu
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo.
echo --------------- MENU -----------------
echo.
echo 1. Abrir BlueScreenView
echo 2. Executar Verificação de arquivos do Sistema (SFC)
echo 3. Corrigir arquivos corrumpidos do Sistema Online (DISM)
echo 4. Checar arquivos da partição do windows (CHKDSK)
echo 5. Checar arquivos da partição do windows offline (Com reinicio do sistema!)
echo 6. Sair do programa
echo.
echo --------------------------------------
echo.
set /p Comando=Digite o número da opção desejada e dê Enter:
if %Comando%==1 goto blue
if %Comando%==2 goto sfc
if %Comando%==3 goto dism
if %Comando%==4 goto chkdisk
if %Comando%==5 goto chkdisk2
if %Comando%==6 goto sair

REM Executa o BlueScreenViwer
:blue
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo.
echo Criando arquivos temporarios %random%-%random%-%random%-%random%
echo Os arquivos de utilização do programa são temporarios e serão deletados assim que fechar o programa!
echo.
echo Abrindo o BlueScreenView...
echo.
start BlueScreenView.exe
echo.
echo BlueScreenView iniciado com sucesso!
echo.
echo Quando tudo estiver pronto pressione Enter para voltar ao menu!
echo.
echo.
echo.
pause
goto menu

REM Executa o SFC
:sfc
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo - Em execução agora:
echo -- Ferramenta do Windows de verificação e correção de arquivos corrompidos!
echo --- Comando no prompt: (sfc /scannow)
echo.
echo.
echo - Isso pode levar algum tempo, não interrompa o procedimento nem desligue o computador!
echo - Quando tudo estiver pronto pressione Enter para voltar ao menu!
echo.
echo.
sfc /scannow
echo.
echo.
echo.
echo.
pause
goto menu

REM Executa o DISM
:dism
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo - Em execução agora:
echo -- Ferramenta do Windows de correção de arquivos corrompidos online!
echo --- Comando no prompt: (dism /online /cleanup-image /restorehealth)
echo.
echo.
echo - Isso pode levar algum tempo, não interrompa o procedimento nem desligue o computador!
echo - Quando tudo estiver pronto pressione Enter para voltar ao menu!
echo.
echo.
dism /online /cleanup-image /restorehealth
echo.
echo.
echo.
echo.
pause
goto menu

REM Executa o CHKDISK
:chkdisk
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo - Em execução agora:
echo -- Ferramenta do Windows de correção de arquivos corrompidos offline!
echo --- Comando no prompt: (chkdsk)
echo.
echo.
echo - Isso pode levar algum tempo, não interrompa o procedimento nem desligue o computador!
echo - Quando tudo estiver pronto pressione Enter para voltar ao menu!
echo.
echo.
chkdsk
echo.
echo.
echo.
echo.
pause
goto menu

REM Executa o CHKDISK R
:chkdisk2
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo - Em execução agora:
echo -- Ferramenta do Windows de correção de arquivos corrompidos before boot!
echo --- Comando no prompt: (chkdsk/r)
echo.
echo.
echo - Para iniciar a verificação completa do chkdisk digite Y e de Enter!
echo - Saia do programa precionando novamente Enter e reinicie o windows!
echo - Após o reinicio antes mesmo do Windows ser carregado a verificação será iniciada!
echo -- É importante não desligar o dispositivo neste momento!
echo -- Esté procedimento é um dos melhores porem mais lento, podendo até mesmo parecer que travou e não está mais checando!
echo --- Espere a finalização correta do check disk e aguarde o inicio do dispositivo!
echo.
echo.
chkdsk/r
echo.
echo.
echo.
echo.
pause
goto menu

:sair 
exit
