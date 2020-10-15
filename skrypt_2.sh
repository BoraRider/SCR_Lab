#!/bin/bash

nazwapliku=$1

echo "Czy napewno chcesz taka nazwe? (t/n) :"
read odp

if [ $odp = t ]
then
	#tworzy plik
	touch $nazwapliku
	echo "Plik o nazwie $nazwapliku utworzony"
else
	echo "Podaj inna nazwe pliku:"
	read nazwapliku
	touch $nazwapliku
	echo "Plik o nazwie $nazwapliku utworzony"
fi




#tworzy folder
mkdir folder
echo "Utworzono folder o nazwie folder"

#przeniesienie pliku do folderu
mv $nazwapliku folder
echo "Przeniesiono plik do folderu"

cd folder
chmod g+rwx $nazwapliku
echo "Nadanie praw odczytu, zapisu, wykonania dla grupy"

chmod u-w $nazwapliku
echo "Usuniecie uprawnien zapisu dla uzytkownika"

touch drugiplik
echo "Utowrzenie drugiego pliku"

rm drugiplik
echo "usuniecie drugiego pliku"


