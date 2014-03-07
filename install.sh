#!/bin/sh
#install.sh
# "A LICENÇA BEER-WARE ou A LICENÇA DA CERVEJA" (Revisão 42 - Tradução Portugués Brasil 1):
#Lucas Daltro<lucasdaltro5@gmail.com> escreveu este arquivo,então já sabe,use por sua conta e risco.Enquanto você retiver esta nota você
# poderá fazer o que quiser com este script.Caso nos encontremos algum dia e você ache
#que isso te ajudou, você poderá me comprar uma cerveja em retribuição, Lucas Daltro 06/03/2014.
#Agradeço ao Matt Hoofman<mhoofman@gmail.com> por manter o repositorio usando neste script


#Clona o repositorio
git clone git://github.com/mhoofman/wordpress-heroku.git
#Cria o app
cd wordpress-heroku
heroku create
#adiciona uma database 
heroku addons:add heroku-postgresql:dev
echo "Qual é a cor?\n"
echo "Ajuda: Procure pela linha->Attached as HEROKU_POSTGRESQL_COLOR\n"
echo "Dite a cor que estiver no lugar de COLOR(em letras maiusculas)\n"
echo "Ex.:A cor de Attached as HEROKU_POSTGRESQL_WHITE_URL é WHITE\n"
read cor
#promove a database
heroku pg:promote HEROKU_POSTGRESQL_$cor
#cria um branch para configurações futuras
git checkout -b production
#deploy \o/
git push heroku production:master
echo "O blog foi instalado \o/ \o/ \o/ \o/"
read
