#!/bin/bash

cd /home/vitor/Documents/App/shell/imagens-livros

for imagem in *.jpg
do
  convert $imagem $imagem.png
done


