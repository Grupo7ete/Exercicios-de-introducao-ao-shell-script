#!/bin/bash

clear

echo "Para verificar as informacoes de hardware\ndeve-se permitir a instalacao do aplicativo INXI:"
echo

echo "Deseja instalar o INXI?:"
echo "1 - Sim"
echo "2 - Tenho o INXI, apenas quero verificar as informacoes do hardware"
echo "3 - Nao"
echo "4 - Desinstalar o INXI?"
echo
echo "Digite sua opcao:"
read op
echo

clear

if [ $op -eq 1 ]; then
echo "Acesse o usuario root para instalar o INXI,\ndurante o processo sera solicitado uma permissao,\napenas digite S de (Sim) para conclusao do mesmo,\nlogo depois podera verificar as informacoes do hardware:"
echo
su root -c "clear; apt install inxi; clear; echo "INXI" "INSTALADO!!!"; echo; echo "Gerando" "as" "informacoes" "do" "hardware!!!"; echo; sleep 3; inxi -b"

elif [ $op -eq 2 ]; then
echo "Gerando as informacoes do hardware!!!"
sleep 3
echo
inxi -b

elif [ $op -eq 3 ]; then
echo "Saindo do programa..."
sleep 3
clear

elif [ $op -eq 4 ]; then
echo "Acesse como usuario root para desinstalar o INXI,\ndurante o processo sera solicitada uma permissao,\napenas digite S de (Sim) para finalizacao."
echo
su root -c "clear; apt remove inxi; echo; clear; echo "INXI" "DESINSTALADO!!!"; sleep 3; clear"

fi
