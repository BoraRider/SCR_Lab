#!/bin/bash

#tworzy plik
touch plik
echo "Plik o nazwie 'plik' utworzony"

#tworzy folder
mkdir folder
echo "Utworzono folder o nazwie folder"

#przeniesienie pliku do folderu
mv plik folder
echo "Przeniesiono plik do folderu"

cd folder
chmod g+rwx plik
echo "Nadanie praw odczytu, zapisu, wykonania dla grupy"

chmod u-w plik
echo "Usuniecie uprawnien zapisu dla uzytkownika"

touch drugiplik
echo "Utowrzenie drugiego pliku"

rm drugiplik
echo "usuniecie drugiego pliku"


