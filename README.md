
# BSOD - Toolkit
Ferramenta para te auxiliar a resolver a tão temida Blue Screen Of Dead!

É totalmente portátil e funciona com arquivos temporários , após  a utilização dos programas como por exemplo o BlueScreenView, os arquivos necessários para o funcionamento interno do programa são automaticamente deletados após fechar o BSOD Toolkit!

## Como instalar?
É bem simples! para instalar basta escolher a versão de arquitetura abaixo, baixar o executável e abrir!

Clique abaixo para fazer o download do programa!

 - [Versão 64bits](https://github.com/nicollasfeitosa/BSOD/raw/master/BSODx64.exe)
 - [Versão 32bits](https://github.com/nicollasfeitosa/BSOD/raw/master/BSOD.exe)

Colocamos como prioridade abrir como administrador pois a maioria dos comandos para restaurar arquivos do windows não funciona sem os privilégios administrativos

## Features

 1. Use o BlueScreenView para visualizar os logs deixados pelo windows
 2. Verificação de arquivos do Windows (SFC)
 3. Corrige arquivos corrompidos do sistema de forma online (DISM)
 4. Checa o disco rígido e partições do windows superficialmente (CheckDisk)
 5. Habilita o Check Disk antes de inicializar o windows, com reinicialização (CheckDisk /R) 

## Guia definitivo!
Como resolver a Tela Azul ou as famosas BSOD's?
Para resolver as BSODs mais comum utilizamos métodos certificados por MVP's da Microsoft Community.

 - Em geral execute os items: 2 e 4.

Se o SFC (Item 2) ou CheckDisk (Item 4) apresentarem algum tipo de erro impossibilitando a correção dos arquivos corrompidos do windows faça os seguintes procedimentos abaixo:

 - Para correção de arquivos caso o SFC (Item 2) apresentar erros, use a opção de DISM (Item 3).

Falhas de correção do SFC são comuns, Use o "DISM" ele fará uma correção online substituindo os arquivos corrompidos pelos originais!

 - Para correção do sistema caso o CheckDisk (Item 4) apresentar problemas faça os seguintes procedimentos abaixo:

No caso do CheckDisk (Item 4) apresentar problemas em reparar os arquivos, use o CheckDisk com reinicialização do sistema, é uma forma de reparar os arquivos protegidos pelo windows de forma offline (sem que esteja funcionando).

 - Agende uma correção com o Item 5, logo após feche tudo que está em execução e reinicie o windows, a partir do boot o CheckDisk fará tudo automaticamente!

É importante não desligar e dependendo do tamanho do Disco Rígido e da velocidade de leitura o processo pode demorar bastante!

Esses passos são padrões desenvolvidos por [mim](https://www.nicollasfeitosa.com) e que resolveram meus problemas com as telas azul da morte, já passei por problemas como formatar o windows 10 e mesmo assim continuar apresentado a BSOD, Resolvi drivers e erros mais comuns e depois de 6 meses tentando resolvi meu problema e sou quase especialista no assunto hoje!

## Coisa que o BSOD Toolkit, não pode fazer por você =(

Em alguns casos o windows precisa de um reparo offline (sem que esteja funcionando) mais avançado que o CheckDisk!

Quando saber se precisa realmente fazer essa correção? 
Execute a opção 2 (SFC) e se apresentar este erro abaixo você deverá realizar os procedimentos a seguir!

![Exemplo de erro quando se deve corrigir o windows de forma offline](https://i.imgur.com/qaslD8m.png)

No seu Windows 10 siga estes passos!

Configurações > Atualização e Segurança > Recuperação > Inicialização Avançada > Reiniciar agora

![Recuperação Windows 10](https://i.imgur.com/N85nW85.png)

Clique em Reiniciar agora!

Na tela de inicialização, clique em Solução de Problemas > Opções avançadas > Prompt de Comando.

O Windows será reiniciado e você informará seu login e senha!
Logo após isso abrirá uma janela de Prompt de Comando.

Digite `BCEDIT` e dê Enter!

Feito isso aparecerá então a lista das partições aonde você deve localizar aonde o systemroot mostra \Windows e acima dela você saberá a letra da partição do Windows quando ele está offline pois eventualmente pode ser diferente do C:

![BCEDIT](https://i.imgur.com/37Htv64.png)

Sabendo qual é a letra da partição basta digitar este comando abaixo substituindo a letra X pela letra da partição encontrada!

    sfc /scannow /offbootdir=X:\ /offwindir=X:\windows

Exemplo: `sfc /scannow /offbootdir=E:\ /offwindir=E:\windows`

Feito isso é só aguardar a análise e correção dos erros.
Após a finalização da correção feche a janela e clique em continuar

Ao voltar ao windows é recomendado executar o DISM novamente para restauração de alguns arquivos superficiais do windows 10.

Feito isso seu Windows estará 100% livre de arquivos corrompidos assim eliminando qualquer culpa de Software (exceto drivers) pelo causamento da BSOD, Se o problema de tela azul ainda persistir vale realizar os procedimentos de hardware, verificar memoria ram, hd, temperatura e outros!  

Se ainda tiver problemas com Tela Azul ficarei feliz em te ajudar em meu [Discord!](https://discord.gg/39U3AMe)



