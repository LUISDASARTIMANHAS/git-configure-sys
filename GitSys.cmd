@echo off
color 9F

:menu
color 9F
cls
echo ===========================================================
echo  Desenvolvido por Luis Das Artimanhas e Pingobras S.A
echo  [1] Ver Configuracoes da Conta    [2]Conectar Git E Github
echo                           [0] Sair
echo ===========================================================
echo.
echo USUARIO ATUAL: %email%
echo EMAIL ATUAL: %user%
echo.

set /p opcao=Insira a opcao: 

if "%opcao%"=="1" (    
	git config --list
	pause
    goto :menu

) else if "%opcao%"=="2" (
	echo.
	set /p user=Digite seu usuario do github: 
	set /p email=Digite seu email cadastrado no github: 
	echo ====================================================
	echo ..................Confirmar Dados:...................
	echo usuario:..........%user%
	echo email:............%email%
	echo ====================================================
	pause
	echo.
	git config --global user.name %user%
	git config --global user.email %email%
	echo Conectado ao Git e Github!!
	echo.

    pause
    goto :menu

) else if "%opcao%"=="0" (
    echo ====================================================
	echo Desenvolvido por Luis Das Artimanhas e Pingobras S.A
	echo ====================================================
    echo Saindo...

    pause
    exit
) else (
    echo Opcao invalida. Tente novamente.

	pause
    goto :menu
)
