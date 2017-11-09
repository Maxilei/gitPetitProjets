#include "kangourou.h"

int Kangourou::nbKangourou =0;

Kangourou::Kangourou(string paramNom, string paramDdn, Animal* paramPere, Animal* paramMere)
	:Animal(paramNom, paramDdn, paramPere, paramMere)
{
	nbKangourou++;
}

void Kangourou::displayNbKangourou()
{
	cout <<" Il y à "<< nbKangourou << " Kangourou "<<endl;
}

void Kangourou::display()
{
	cout << "Le Kangourou ";
	Animal::display();
}

Kangourou::~Kangourou()
{
	nbKangourou --;
}

void Kangourou::crier()
{
	cout<< " grogne "<<endl;
}