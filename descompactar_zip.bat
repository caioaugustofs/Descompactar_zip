@echo off
setlocal enabledelayedexpansion

:: Verifica se um diretório foi passado como argumento, senão usa o diretório atual
set "diretorio=%~1"
if "%diretorio%"=="" set "diretorio=%cd%"

:: Procura por arquivos .zip no diretório e subdiretórios
for /r "%diretorio%" %%f in (*.zip) do (
    set "arquivo_zip=%%f"
    
    :: Extrai o nome do arquivo sem a extensão .zip
    for %%a in ("%%f") do set "nome_pasta=%%~na"
    
    :: Cria um diretório para descompactar o arquivo
    mkdir "!diretorio!\!nome_pasta!" 2>nul

    :: Descompacta o arquivo .zip
    echo Descompactando "!arquivo_zip!" em "!diretorio!\!nome_pasta!"
    powershell -command "Expand-Archive -Path '!arquivo_zip!' -DestinationPath '!diretorio!\!nome_pasta!'"

    echo.
)

endlocal
