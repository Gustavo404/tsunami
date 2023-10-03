# Tsuami
[![AWK 1.3.4](https://img.shields.io/badge/AWK-1.3.4-red)](https://packages.debian.org/stable/awk) 
[![ShellScript Bash](https://img.shields.io/badge/ShellScript-Bash-blue)](https://www.gnu.org/software/bash/)
[![Licença](https://img.shields.io/badge/Licen%C3%A7a-GPL%202.0-yellow)](https://github.com/gustavo404/Tsuami/blob/main/LICENSE)
[![Youtube](https://img.shields.io/badge/Youtube-Gustavo404-red.svg)](https://youtube.com/gustavo404)

## Visão geral
Este é um script Bash que permite formatar arquivos de entrada de duas maneiras diferentes: formato "ID" e formato "Telnet". O script substituirá tabulações por barras e realizará outras operações de formatação, dependendo da opção escolhida.

## **Uso**

Para utilizar o Tsunami, você pode executá-lo a partir da linha de comando com as seguintes opções:

- **`i arquivo`**: Formata o arquivo de entrada, substituindo tabulações por barras.
- **`t arquivo`**: Formata o arquivo de entrada de acordo com a função Telnet.
- **`s arquivo`**: Formata o arquivo de entrada, removendo informações desnecessárias.

Exemplo de uso:

```bash
bash tsunami.sh [-i] [-t] [-s] arquivo_entrada.txt
```

## **Funções Principais**

### **`$nome_arquivo_sem_extensao`**

Este é um bloco de cada função que delimita o nome do arquivo de entrada para definir como deve se chamar o arquivo de saida. Veja como funciona:

1. captura o nome do arquivo de entrada em **`$1`** e armazena em **`$arquivo_entrada`**
2. utiliza o *basename* para delimitar **`$arquivo_entrada`** no primeiro “_”;
3. usa o ********basename******** novamente para delimitar **`$arquivo_entrada`**  no primeiro “.”
4. o nome delimitado vai para **`$nome_arquivo_sem_extensao`**

### **`formatar_id()`**

Esta função formata um arquivo de entrada, substituindo tabulações por barras. Ela realiza as seguintes etapas:

1. Extrai o nome do arquivo sem extensão.
2. Cria um arquivo de saída com o nome formatado.
3. Substitui tabulações por barras usando o comando **`sed`**.
4. Remove linhas duplicadas com barras consecutivas.
5. Exibe uma mensagem de sucesso ou erro.

### **`formatar_telnet()`**

Esta função formata um arquivo de entrada de acordo com a função Telnet (substitua com sua lógica). Ela realiza as seguintes etapas:

1. Extrai o nome do arquivo sem extensão.
2. Cria um arquivo de saída com o nome formatado.
3. Utiliza expressões regulares (**`sed -E`**) para realizar a formatação de acordo com a lógica desejada.
4. Exibe uma mensagem de sucesso ou erro.

### **`formatar_sinal()`**

Esta função formata um arquivo de entrada, removendo informações desnecessárias. Ela realiza as seguintes etapas:

1. Extrai o nome do arquivo sem extensão.
2. Cria um arquivo de saída com o nome formatado.
3. Utiliza o comando **`sed`** para substituir e remover partes específicas do texto.
4. Exibe uma mensagem de sucesso ou erro.

## **Exemplos de Uso**

Para ilustrar o uso do Tsunami, aqui estão alguns exemplos:

1. Formatar um arquivo para o padrão de ID (1/2/3):
    
    ```bash
    bash tsunami.sh -i arquivo_id.txt
    ```
    
2. Formatar um arquivo para comandos usando a lógica Telnet:
    
    ```bash
    bash tsunami.sh -t arquivo.txt
    ```
    
3. Formatar um arquivo extraindo apenas o sinal:
    
    ```bash
    bash tsunami.sh -s arquivo.txt
    ```
    

Se nenhum argumento de linha de comando for fornecido, o Tsunami exibirá uma mensagem de ajuda com as opções disponíveis.

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
