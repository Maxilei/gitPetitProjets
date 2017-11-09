#include "lion.h"

Lion::Lion(string paramNom, string paramDdn, Animal* paramPere, Animal* paramMere, int paramTailleCriniere)
	:Animal(paramNom, paramDdn, paramPere, paramMere)
{
	tailleCriniere = paramTailleCriniere;
}

void Lion::display()
{
	cout << "Le Lion ";
	Animal::display();
}

Lion::~Lion()
{
	
}

void Lion::crier()
{
	cout<< " rugit  "<<endl;
}