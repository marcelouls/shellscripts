#!/bin/bash

read -p "digite o seu nome : " VAR

read -p "Deseja exibir mensagem? (y/n)" RESPOSTA

MENSAGEM="bemvindo novamente $VAR"

if [ "$RESPOSTA" = "y" ]
then
if [ "$VAR" = "Administra" ]
then
echo "$MENSAGEM"
else
echo "Favor solicitar autorização com  area administrativa"
fi
fi
