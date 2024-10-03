#!/bin/bash

#Alunos: Bruno Gabriel Viero e João Vitor Spezia

if [ $# -gt 1 ]
then
        echo "Muitos Argumentos! Programa Encerrado!"
        exit 1
else
        if [ $# -eq 1 ]
        then
                usuario=$1
        else
                usuario=$(whoami)
        fi
fi

if user_id=$(id -u $usuario)
then
        echo -e "Usuário: $usuario\nUser ID: $user_id"
else
        echo "Usuário Inexistente! Programa Encerrado!"
	exit 1
fi
