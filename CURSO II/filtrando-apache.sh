#!/bin/bash

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
  cat apache.log | grep $1
  if [ $? -ne 0 ]
  then
    echo "O endereço IP procurado não esta no log"
  fi
else
  echo "Formato inválido!"
fi
