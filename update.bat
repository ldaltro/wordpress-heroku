::update.bat
:: "A LICENÇA BEER-WARE ou A LICENÇA DA CERVEJA" (Revisão 42 - Tradução Portugués Brasil 1):
::Lucas Daltro<lucasdaltro5@gmail.com> escreveu este arquivo,então já sabe,use por sua conta e risco.Enquanto você retiver esta nota você
:: poderá fazer o que quiser com este script.Caso nos encontremos algum dia e você ache
::que isso te ajudou, você poderá me comprar uma cerveja em retribuição, Lucas Daltro 06/03/2014.
::Agradeço ao Matt Hoofman<mhoofman@gmail.com> por manter o repositorio usando neste script

git add .
echo "Qual é o texto do commit?"
set /p tex=Qual e o texto do commit?:
git commit -m $tex
git push heroku production:master
echo Atualizado!
