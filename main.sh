#!/bin/bash

#--------------------------------------------------#
# Autor: Matheus Marins Bernardello                #
# Data: 05/12/2023                                 #
#--------------------------------------------------#

#Importando o alfabeto e as funções
. alfabeto.sh
. funcoes.sh

#Função principal 
function main(){
    echo "Criptografia de César"
    echo "---------------------"
    echo "1 - Criptografar"
    echo "2 - Descriptografar"
    echo "3 - Criptografar com chave"
    echo "4 - Descriptografar com chave"
    read -p "Digite a opção desejada: " opcao
    echo "---------------------"
    case $opcao in
        1) criptografar 
            ;;
        2) descriptografar 
            ;;
        3) criptografar_com_chave
            ;;
        4) descriptografar_com_chave
            ;;
        *) echo "Opção inválida" 
            ;;
    esac
}
#Chamando a função principal
while true;do
    main
    read -p "Deseja continuar? (s/n): " resposta
    resposta=$(echo $resposta | tr [:upper:] [:lower:])
    if [ $resposta == "n" ];then
        echo "Saindo..."
        exit
    fi
done

#Exemplo de como deslocar o alfabeto
#string="abcdefghijklmnopqrstuvwxyz"
#echo ${string:2}${string:0:2}