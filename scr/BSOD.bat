REM Desliga o ECHO, Muda o titulo, UTF-8 e preferencias!
REM Versão 1.1.0.0
@echo off
title BSOD - ToolKit by Nicollas Feitosa
chcp 65001 
cls

REM Menu Principal!
:menu
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
echo 1. Automatico (Procedimentos Padrões)
echo 2. Automático (Com Reinicialização)
echo.
echo 3. Ver especificações de hardware do sistema (SystemInfo)
echo 4. Abrir CPU-Z (Visualização de frequências)
echo 5. Abrir BlueScreenView Logs (Mindump)
echo 6. Executar Verificação de arquivos do Sistema (SFC)
echo 7. Corrigir arquivos corrumpidos do Sistema Online (DISM)
echo 8. Checar arquivos da partição do windows (CHKDSK)
echo 9. Checar arquivos da partição do windows offline (Com reinicialização)
echo 0. Sair do programa
echo.
echo --------------------------------------
echo.
set /p Comando=Digite o número da opção desejada e dê Enter:
if %Comando%==1 goto auto
if %Comando%==2 goto autoren
if %Comando%==3 goto specs
if %Comando%==4 goto cpuz
if %Comando%==5 goto blue
if %Comando%==6 goto scan
if %Comando%==7 goto dism
if %Comando%==8 goto chkdisk
if %Comando%==9 goto chkdisk2
if %Comando%==0 goto sair

REM Automatico normal
:auto
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo      Modo de reparo automático!
echo        Procedimento (1 de 3)
echo --------------------------------------
echo.
echo - Em execução agora: SFC SCANNOW
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
echo Etapa 1 - SFC SCANNOW foi concluída com êxito!
echo.
set /p Confirmacao=Deseja continuar para a proxima etapa? - DISM ONLINE (s/n) : 
if %Confirmacao%==s goto auto2
if %Confirmacao%==sim goto auto2
if %Confirmacao%==y goto auto2
if %Confirmacao%==yes goto auto2
if %Confirmacao%==n goto menu
if %Confirmacao%==nao goto menu
if %Confirmacao%==não goto menu
if %Confirmacao%==no goto menu

:auto2
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo      Modo de reparo automático!
echo        Procedimento (2 de 3)
echo --------------------------------------
echo.
echo - Em execução agora: DISM ONLINE
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
echo Etapa 2 - DISM ONLINE foi concluída com êxito!
echo.
set /p Confirmacao=Deseja continuar para a proxima etapa? - CHKDSK (s/n) : 
if %Confirmacao%==s goto auto3
if %Confirmacao%==sim goto auto3
if %Confirmacao%==y goto auto3
if %Confirmacao%==yes goto auto3
if %Confirmacao%==n goto menu
if %Confirmacao%==nao goto menu
if %Confirmacao%==não goto menu
if %Confirmacao%==no goto menu

:auto3
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo      Modo de reparo automático!
echo        Procedimento (3 de 3)
echo --------------------------------------
echo.
echo - Em execução agora: CHKDSK
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
echo Etapa 3 - CHKDSK foi concluída com êxito!
echo.
echo O Modo de reparo automático foi concluído com sucesso!
echo.
pause
goto menu

REM Automatico normal
:autoren
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo      Modo de reparo automático!
echo        Procedimento (1 de 3)
echo --------------------------------------
echo.
echo - Em execução agora: SFC SCANNOW
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
echo Etapa 1 - SFC SCANNOW foi concluída com êxito!
echo.
set /p Confirmacao=Deseja continuar para a proxima etapa? - DISM ONLINE (s/n) : 
if %Confirmacao%==s goto autoren2
if %Confirmacao%==sim goto autoren2
if %Confirmacao%==y goto autoren2
if %Confirmacao%==yes goto autoren2
if %Confirmacao%==n goto menu
if %Confirmacao%==nao goto menu
if %Confirmacao%==não goto menu
if %Confirmacao%==no goto menu

:autoren2
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo      Modo de reparo automático!
echo        Procedimento (2 de 3)
echo --------------------------------------
echo.
echo - Em execução agora: DISM ONLINE
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
echo Etapa 2 - DISM ONLINE foi concluída com êxito!
echo.
set /p Confirmacao=Deseja continuar para a proxima etapa? - CHKDSK (s/n) : 
if %Confirmacao%==s goto autoren3
if %Confirmacao%==sim goto autoren3
if %Confirmacao%==y goto autoren3
if %Confirmacao%==yes goto autoren3
if %Confirmacao%==n goto menu
if %Confirmacao%==nao goto menu
if %Confirmacao%==não goto menu
if %Confirmacao%==no goto menu

:autoren3
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo      Modo de reparo automático!
echo        Procedimento (3 de 3)
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
echo Etapa 3 - CHKDSK foi concluída com êxito!
echo De acordo com sua escolha o CHKDSK pode ter sido agendado para a proxima reinicialização!
echo.
echo O Modo de reparo automático foi concluído com sucesso!
echo.
pause
goto menu

REM Executa o SystemInfo
:specs
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo.
echo As informações sobre o Hardware podem ser extensas demais para esta janela
echo Considere maximizar o tamanho da janela para melhor visualização
echo.
echo Informações sobre o sistema:
echo.
systeminfo
echo.
echo SystemInfo exibido com sucesso!
echo.
echo Quando tudo estiver pronto pressione Enter para voltar ao menu!
echo.
echo.
echo.
pause
goto menu

REM Executa o CPUZ
:cpuz
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
echo Abrindo o CPU-Z...
echo.
start cpuz_x32.exe
echo.
echo CPU-z x32 iniciado com sucesso!
echo.
echo Quando tudo estiver pronto pressione Enter para voltar ao menu!
echo.
echo.
echo.
pause
goto menu

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
:scan
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

REM Pagina de confirmação de saida do programa
:sair
cls
echo.
echo --------------------------------------
echo        BSOD - Toolkit Fix It!
echo     Criado por: Nicollas Feitosa
echo --------------------------------------
echo.
echo.
echo               Creditos
echo          nicollasfeitosa.com
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p Confirmacao=Você deseja realmente sair do programa? (s/n) : 
if %Confirmacao%==s goto quit
if %Confirmacao%==sim goto quit
if %Confirmacao%==y goto quit
if %Confirmacao%==yes goto quit
if %Confirmacao%==n goto menu
if %Confirmacao%==nao goto menu
if %Confirmacao%==não goto menu
if %Confirmacao%==no goto menu

:quit
exit
