#!/bin/bash

. alfabeto.sh

#Função para criptografar
function criptografar(){
    #Variável que recebe o texto a ser criptografado
    read -p "Digite o texto a ser criptografado: " texto
    texto=$(echo $texto | tr '[:lower:]' '[:upper:]')
    #Variável que recebe o número de casas a serem deslocadas
    local numero_casas=$default
    #Variável que recebe o alfabeto
    local alfabeto=$normal
    #Variável que recebe o alfabeto deslocado
    local alfabeto_deslocado=$cifrado
    #Variável que recebe o texto criptografado
    local texto_criptografado=$(echo $texto | tr $alfabeto $alfabeto_deslocado)
    #Retorna o texto criptografado
    echo $texto_criptografado
}
#Função para descriptografar
function descriptografar(){
    #Variável que recebe o texto a ser descriptografado
    read -p "Digite o texto a ser descriptografado: " texto
    texto=$(echo $texto | tr '[:lower:]' '[:upper:]')
    #Variável que recebe o número de casas a serem deslocadas
    local numero_casas=$default
    #Variável que recebe o alfabeto
    local alfabeto=$cifrado
    #Variável que recebe o alfabeto deslocado
    local alfabeto_deslocado=$normal
    #Variável que recebe o texto descriptografado
    local texto_descriptografado=$(echo $texto | tr $alfabeto $alfabeto_deslocado)
    #Retorna o texto descriptografado
    echo $texto_descriptografado
}
#Função para criptografar com chave
function criptografar_com_chave(){
    #Variável que recebe o texto a ser criptografado
    read -p "Digite o texto a ser criptografado: " texto
    texto=$(echo $texto | tr '[:lower:]' '[:upper:]')
    #Variável que recebe o número de casas a serem deslocadas
    read -p "Digite o número de casas a serem deslocadas: " chave
    #Por default, o número de casas é 3
    while [ $chave -eq 3 ];do
        echo "Número de casas igual a 3, por padrão" 
        echo "Favor digitar um valor diferente de 3"
        echo "OBS: Caso seja 3, usar a opção 1"
        read -p "Deseja voltar ao menu? (s/n): " resposta
        resposta=$(echo $resposta | tr [:upper:] [:lower:])
        if [ $resposta == "s" ];then
            main
        fi
        read -p "Digite o número de casas a serem deslocadas: " chave
    done
    #Variável que recebe o número de casas a serem deslocadas
    local numero_casas=$chave
    #Variável que recebe o alfabeto
    local alfabeto=$normal
    #Variável que recebe o alfabeto deslocado
    local alfabeto_deslocado=${normal:$numero_casas}${normal:0:$numero_casas}
    #Variável que recebe o texto criptografado
    local texto_criptografado=$(echo $texto | tr $alfabeto $alfabeto_deslocado)
    #Retorna o texto criptografado
    echo $texto_criptografado
}
#Função para descriptografar com chave
function descriptografar_com_chave(){
    #Variável que recebe o texto a ser descriptografado
    read -p "Digite o texto a ser descriptografado: " texto
    texto=$(echo $texto | tr '[:lower:]' '[:upper:]')
    #Variável que recebe o número de casas a serem deslocadas
    read -p "Digite o número de casas a serem deslocadas: " chave
    #Por default, o número de casas é 3
    while [ $chave -eq 3 ];do
        echo "Número de casas igual a 3, por padrão" 
        echo "Favor digitar um valor diferente de 3"
        echo "OBS: Caso seja 3, usar a opção 2"
        read -p "Deseja voltar ao menu? (s/n): " resposta
        resposta=$(echo $resposta | tr [:upper:] [:lower:])
        if [ $resposta == "s" ];then
            main
        fi
        read -p "Digite o número de casas a serem deslocadas: " chave
    done
    #Variável que recebe o número de casas a serem deslocadas
    local numero_casas=$chave
    #Variável que recebe o alfabeto
    local alfabeto=$normal
    #Variável que recebe o alfabeto deslocado
    local alfabeto_deslocado=${normal:$numero_casas}${normal:0:$numero_casas}
    #Variável que recebe o texto descriptografado
    local texto_descriptografado=$(echo $texto | tr $alfabeto_deslocado $alfabeto)
    #Retorna o texto descriptografado
    echo $texto_descriptografado
}