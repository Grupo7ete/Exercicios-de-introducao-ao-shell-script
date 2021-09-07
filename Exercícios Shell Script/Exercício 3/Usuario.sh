#!/bin/bash

clear

echo "Para verificar as informacoes do usuario\ndeve-se permitir a instalacao do aplicativo FINGER:"
echo

echo "Deseja instalar o FINGER?:"
echo "1 - Sim"
echo "2 - Tenho o FINGER, apenas quero verificar as informacoes do usuario"
echo "3 - Nao"
echo "4 - Desinstalar o FINGER?"
echo
echo "Digite sua opcao:"
read op
echo

clear

if [ $op -eq 1 ]; then
echo "Acesse o usuario root para instalar o FINGER,\naguarde a conclusao do mesmo, logo depois\npodera verificar as informacoes do usuario:"
echo

su root -c "clear; apt install finger; clear; echo "FINGER" "INSTALADO!!!"; echo; echo "Digite" "o" "nome" "do" "usuario" "que" "deseja" "verificar" "as" "informacoes!!!""
read user
sleep 3
clear
echo "Gerando as informacoes do $user!!!\n"
finger $user
echo

elif [ $op -eq 2 ]; then
echo "Digite o nome do usuario que deseja verificar as informacoes:" 
read user 
sleep 3
clear
echo "Gerando as informacoes do $user!!!\n"
finger $user
echo

elif [ $op -eq 3 ]; then
echo "Saindo do programa..."
sleep 3
clear

elif [ $op -eq 4 ]; then
echo "Acesse como usuario root para desinstalar o FINGER,\ndurante o processo sera solicitada uma permissao,\napenas digite S de (Sim) para finalizacao."
echo
su root -c "clear; apt remove inxi; echo; clear; echo "FINGER" "DESINSTALADO!!!"; sleep 3; clear"

fi
