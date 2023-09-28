# Tsuami
[![AWK 1.3.4](https://img.shields.io/badge/AWK-1.3.4-red)](https://packages.debian.org/stable/awk) 
[![ShellScript Bash](https://img.shields.io/badge/ShellScript-Bash-blue)](https://www.gnu.org/software/bash/)
[![Licença](https://img.shields.io/badge/Licen%C3%A7a-GPL%202.0-yellow)](https://github.com/gustavo404/Tsuami/blob/main/LICENSE)
[![Youtube](https://img.shields.io/badge/Youtube-Gustavo404-red.svg)](https://youtube.com/gustavo404)

## Visão geral
Este é um script Bash que permite formatar arquivos de entrada de duas maneiras diferentes: formato "ID" e formato "Telnet". O script substituirá tabulações por barras e realizará outras operações de formatação, dependendo da opção escolhida.

<br>

## Uso

Para executar o script, use o seguinte formato:

```bash
./script.sh [-i arquivo] [-t arquivo]
```

Onde:

- -i arquivo: Formata o arquivo como "ID".
- -t arquivo: Formata o arquivo como "Telnet".

> Se nenhum argumento de linha de comando for fornecido, o script exibirá uma mensagem de ajuda.

### Formatação "ID"

A formatação "ID" substitui tabulações por barras e remove linhas em que ocorram duas barras consecutivas ("//").

Exemplo de uso:
```bash
./tsunami.sh -i arquivo_de_entrada.txt
```

### Formatação "Telnet"
A formatação "Telnet" realiza uma substituição específica no arquivo de entrada usando expressões regulares. Consulte o código do script para obter detalhes específicos da substituição.

Exemplo de uso:
```bash
./tsunami.sh -t arquivo_de_entrada.txt
```

<br>

## Cores de Saída
O script usa cores para destacar a saída:

- Texto em verde indica que a operação foi bem-sucedida.
- Texto em vermelho indica um erro ou aviso.
> Lembre-se de fornecer o caminho correto para o arquivo de entrada desejado ao usar o script.

<br>

## Feedback, Perguntas e Relatórios de Problemas

Se quiser contribuir para a melhoria do projeto Tsuami, sugestões, perguntas ou encontrar algum problema, estou aqui para ajudar.

### Sugestões e Melhorias

Se você tiver sugestões ou ideias para melhorar o projeto Tsuami, sinta-se à vontade para compartilhá-las. Você pode fazer isso das seguintes maneiras:

- **Pull Request (PR)**: Se você deseja contribuir diretamente com código, abra um Pull Request com suas alterações propostas. Analisaremos suas contribuições e trabalharemos juntos para incorporá-las ao projeto.

- **Issues**: Use as Issues para sugerir melhorias ou novos recursos. Descreva detalhadamente sua ideia para que eu possa entender e discutir como implementá-la.

### Relatórios de Problemas (Bugs)

Encontrou um bug ou problema em Tsuami? Você pode relatar problemas das seguintes maneiras:

- **Issues**: Abra uma Issue descrevendo o problema. Inclua informações relevantes, como o ambiente em que o erro ocorreu, etapas para reproduzi-lo e qualquer mensagem de erro que tenha recebido.

- **Site**: Você também pode reportar bugs em [gustavo404.com/sobre](https://www.gustavo404.com/sobre). Use os meios de contato para enviar detalhes sobre o problema encontrado.

### Perguntas e Suporte

Se você tiver alguma pergunta sobre como usar Tsuami ou precisar de suporte, Você pode fazer o seguinte:

- **Issues Existentes**: Verifique se já existe uma Issue relacionada à sua pergunta. Talvez a resposta que você procura já esteja lá.

- **Novas Issues**: Se sua pergunta não estiver coberta nas Issues existentes, sinta-se à vontade para criar uma nova Issue com sua pergunta. Ficarei feliz em responder e ajudar.

- **Contato pelo Site**: Você também pode entrar em contato conosco através do site [gustavo404.com/sobre](https://www.gustavo404.com/sobre). Utilize os meios de contato para enviar suas perguntas ou dúvidas.

Agradeço por sua contribuição, feedback e envolvimento na comunidade do projeto Tsuami.

<br>

## Licença

O código-fonte do projeto Tsuami é disponibilizado sob os termos da Licença Pública Geral GNU versão 2.0 (GPL 2.0). Isso significa que você é livre para usar, modificar e distribuir o código de acordo com os termos da GPL 2.0. Certifique-se de ler e entender os detalhes da licença antes de utilizar o projeto.
