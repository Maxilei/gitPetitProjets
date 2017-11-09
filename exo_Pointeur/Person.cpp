#include "Person.h"

//Déclaration getter et setter par informations 
string Person::getName()
{
	return name;
}
void Person::setName(string theName)
{
	name = theName;
}


string Person::getSurname()
{
	return surname;
}
void Person::setSurname(string theSurname)
{
	surname = theSurname;
}


string Person::getBirthdate()
{
	return birthdate;
}
void Person::setBirthdate(string theBirthdate)
{
	birthdate = theBirthdate;
}

//Fonction d'affichage :
void Person::display()
{
	cout<< surname << " "<< name << " est né(e) le : " <<birthdate << "\n";
}
//Fonction de saisie :
void Person::input()
{
	cout<< "Prénom : ";
	getline(cin,surname);
	cout<<"Nom : ";
	getline(cin,name);
	cout<< "Date de naissance : ";
	getline(cin,birthdate);
}

Person::Person()
{
	name="Paul";
	surname="Jack";
	birthdate="01/01/2000";
}

Person::Person(string hisName, string hisSurname, string hisBirthdate)
{
	name=hisName;
	surname=hisSurname;
	birthdate=hisBirthdate;
}