#!/bin/bash
#
# Exercicio:calcular Idade usuario a partir
# da data de nascimmnento e imprimir na tela


# Pedir as informações ao usuario

read -p "Digite o seu nome : " NOME
echo "Nome Cadastrado: ${NOME:?Usuario não forneceu nome\!}"
read -p "digite a sua data de Nascimento (DD/MM/AAAA) : " DATA_NASCIMENTO
echo "Data Nasc.: ${DATA_NASCIMENTO:?deve informar data de nascimento\!}"

# Calcular a idade

ANO_DATA_NASCIMENTO=${DATA_NASCIMENTO##*/}
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO_DATA_NASCIMENTO" | bc -l)

# Imprimer o resultado na tela

echo "Olá $NOME"
echo "Este ano vc tem/terá $IDADE anos"
