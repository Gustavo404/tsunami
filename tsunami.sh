#!/bin/bash

# Cores para formatação de texto
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Sem cor

# Função para formatar um arquivo de entrada, substituindo tabulações por barras
formatar_id() {
  local arquivo_entrada="$1"
  local nome_arquivo_sem_extensao=$(basename "$arquivo_entrada" | cut -f 1 -d '_')
  local nome_arquivo_sem_extensao=$(basename "$nome_arquivo_sem_extensao" | cut -f 1 -d '.')
  local arquivo_saida="${nome_arquivo_sem_extensao}_formatado.txt"
  
  if [ -f "$arquivo_entrada" ]; then
    # Realiza a substituição usando o sed
    sed 's/\t/\//g' "$arquivo_entrada" > "$arquivo_saida"
    sed -i '/\/\//d' "$arquivo_saida"
    echo -e "${GREEN}ID formatado com sucesso e salvo em '$arquivo_saida'${NC}"
  else
    echo -e "${RED}O arquivo '$arquivo_entrada' não existe.${NC}"
  fi
}

# Função para formatar um arquivo de entrada de acordo com a função Telnet (substitua com sua lógica)
formatar_telnet() {
  local arquivo_entrada="$1"
  local nome_arquivo_sem_extensao=$(basename "$arquivo_entrada" | cut -f 1 -d '_')
  local nome_arquivo_sem_extensao=$(basename "$nome_arquivo_sem_extensao" | cut -f 1 -d '.')
  local arquivo_saida="${nome_arquivo_sem_extensao}_telnet.txt"
  
  if [ -f "$arquivo_entrada" ]; then
    # Realiza a substituição usando o sed
    sed -E 's/([0-9]+)\/([0-9]+)\/([0-9]+)/show optic_module slot \1 pon \2 onu \3/; t; d' "$arquivo_entrada" > "$arquivo_saida"
    echo -e "${GREEN}Telnet formatado com sucesso e salvo em '$arquivo_saida'${NC}"
  else
    echo -e "${RED}O arquivo '$arquivo_entrada' não existe.${NC}"
  fi
}

formatar_sinal() {
  local arquivo_entrada="$1"
  local nome_arquivo_sem_extensao=$(basename "$arquivo_entrada" | cut -f 1 -d '_')
  local nome_arquivo_sem_extensao=$(basename "$nome_arquivo_sem_extensao" | cut -f 1 -d '.')
  local arquivo_saida="${nome_arquivo_sem_extensao}_sinal.txt"
  sed 's/RECV POWER   : //g; s/ (Dbm)//g; s/(Dbm)//g; s/\t//g' $arquivo_entrada > $arquivo_saida
}

# Verifica as opções de linha de comando
while getopts "i:t:s:" opcao; do
  case "$opcao" in
    i)
      arquivo_input="$OPTARG"
      formatar_id "$arquivo_input"
      ;;
    t)
      arquivo_input="$OPTARG"
      formatar_telnet "$arquivo_input"
      ;;
    s)
      arquivo_input="$OPTARG"
      formatar_sinal "$arquivo_input"
      ;;
    *)
      echo -e "${RED}Uso: $0 [-i arquivo] [-t arquivo]${NC}"
      exit 1
      ;;
  esac
done

# Se nenhum argumento de linha de comando for fornecido, exiba uma mensagem de ajuda
if [ $# -eq 0 ]; then
  echo -e "${RED}Uso: $0 [-i arquivo] [-t arquivo]${NC}"
fi
