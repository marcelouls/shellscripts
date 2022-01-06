#!/bin/bash

#exercicios Condicionais if elif else

#filmes disponiveis :


echo "============================================"
echo "          CINEMA SHELLSCRIPT                "
echo "============================================"


echo "Filme 1 (123), Filme 2 (234), Filme 3 (456)"
read -p "informe o codigo do filme que deseja assistir : " CD_FILME
read -p "informe a sua idade : " IDADE
read -p "informe a quantidade de dinheiro que possue : " DINHEIRO


if [ "$CD_FILME" -eq "123" ]
then
	echo "---------------------------------------------------------------------"
	echo "Você tem selecionado o Filme 1, para Maiores de 18 anos, Valor R$ 70 "

if [ "$IDADE" -lt "18" ]
then 
	echo "infelizmente você não tem a idade requerida para asistir o filme (18 anos)"
else
	if [ "$DINHEIRO" -lt "70" ]
	then 
		echo " o valor R$ $DINHEIRO  não é suficiente,  valor ingresso R$ 70 "
	else 
		echo "Favor retire o seu ingresso "
	fi
fi


elif [ "$CD_FILME" -eq "234" ]
then
	echo "----------------------------------------------------------------------"
	echo "Você tem selecionado o Filme 2, para Mariores de 12 anos, Valor R$ 40 "

if [ "$IDADE" -lt "12" ]
then
        echo "infelizmente você não tem a idade requerida para asistir o filme"
else
        if [ "$DINHEIRO" -lt "40" ]
        then
                echo " o valor R$ $DINHEIRO  não é suficiente,  valor ingresso R$ 40 "
        else
                echo "Favor retire o seu ingresso "
        fi
fi


elif [ "$CD_FILME" -eq "456" ]
then
        echo "----------------------------------------------------------------------"
        echo "Você tem selecionado o Filme 3, para todas as idades, Valor R$ 35 "

        if [ "$DINHEIRO" -lt "40" ]
        then
                echo " o valor R$ $DINHEIRO  não é suficiente,  valor ingresso R$ 40 "
        else
                echo "Favor retire o seu ingresso "
        fi


else
	echo "=============== A T E N Ç Ã 0 ! ============================"
	echo "O codigo de filme inserido NAO EXISTE favor confira a lista "
fi


