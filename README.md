# Descompactar Arquivos ZIP - Script em .BAT

Este script em Batch (.bat) permite descompactar todos os arquivos `.zip` encontrados em um diretório e seus subdiretórios. Ele cria pastas com o nome do arquivo `.zip` e extrai o conteúdo de cada arquivo `.zip` para a pasta correspondente.

## Requisitos
+ Windows PowerShell (pré-instalado em versões modernas do Windows)
+ Windows 7 ou superior (devido ao uso do PowerShell)

## Como Usar

1. Baixe o script:
   + Salve o conteúdo do script abaixo em um arquivo `.bat`, por exemplo, `descompactar_zip.bat`.

2. Execute o script:
   + Para descompactar todos os arquivos `.zip` no diretório atual e seus subdiretórios, basta dar um duplo clique no script ou executá-lo através do prompt de comando.
   + Para especificar um diretório de origem onde os arquivos `.zip` estão localizados, passe o caminho do diretório como argumento. Exemplo:

   ```bash
   descompactar_zip.bat C:\caminho\para\o\diretorio
   ```

3. Resultado:
    + O script criará um diretório para cada arquivo .zip, com o mesmo nome do arquivo, e descompactará o conteúdo dentro desse diretório.
