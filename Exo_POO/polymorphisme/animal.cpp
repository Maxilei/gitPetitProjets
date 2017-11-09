#include "animal.h"

void Animal::display()
{
	cout <<nom << " est né(e) le "<< ddn ;
	// Animal::displayNbAnimaux();
}

int Animal::nbAnimaux=0;
void Animal::displayNbAnimaux()
{
	cout << "Il y a " << nbAnimaux << " animaux dans le zoo." <<endl;
}

Animal::Animal(string paramNom, string paramDdn, Animal* paramPere, Animal* paramMere)
{
	nbAnimaux++;
	nom = paramNom;
	ddn = paramDdn;
	pere = paramPere;
	mere = paramMere;
}

Animal::~Animal()
{
	nbAnimaux--;
}