# Tsuami

Este é um script Bash que permite formatar arquivos de entrada de duas maneiras diferentes: formato "ID" e formato "Telnet". O script substituirá tabulações por barras e realizará outras operações de formatação, dependendo da opção escolhida.

## Uso

Para executar o script, use o seguinte formato:

```bash
./script.sh [-i arquivo] [-t arquivo]
```

Onde:

- -i arquivo: Formata o arquivo como "ID".
- -t arquivo: Formata o arquivo como "Telnet".

> Se nenhum argumento de linha de comando for fornecido, o script exibirá uma mensagem de ajuda.

## Formatação "ID"

A formatação "ID" substitui tabulações por barras e remove linhas em que ocorram duas barras consecutivas ("//").

Exemplo de uso:
```bash
./tsunami.sh -i arquivo_de_entrada.txt
```

## Formatação "Telnet"
A formatação "Telnet" realiza uma substituição específica no arquivo de entrada usando expressões regulares. Consulte o código do script para obter detalhes específicos da substituição.

Exemplo de uso:
```bash
./tsunami.sh -t arquivo_de_entrada.txt
```

## Cores de Saída
O script usa cores para destacar a saída:

- Texto em verde indica que a operação foi bem-sucedida.
- Texto em vermelho indica um erro ou aviso.
> Lembre-se de fornecer o caminho correto para o arquivo de entrada desejado ao usar o script.
