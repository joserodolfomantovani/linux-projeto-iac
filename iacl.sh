#!/bin/bash

echo "criando diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários ..."

useradd carlos  	-c "Usuário Carlos"    -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria   	-c "Usuário Maria"     -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd jaao    	-c "Usuário João"      -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora      	-c "Usuário Debora"    -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN 
useradd sebastiana 	-c "Usuario Sebastina" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto  	-c "Usuário Roberto"   -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina 	-c "Usuário Josefina"  -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda 		-c "Usuário Amanda"    -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio 	-c "Usuário Rogério"   -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios ...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim ..."


