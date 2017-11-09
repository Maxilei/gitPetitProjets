#include "lion.h"

Lion::Lion(string paramNom, string paramDdn, Animal* paramPere, Animal* paramMere, int paramTailleCriniere)
	:Animal(paramNom, paramDdn, paramPere, paramMere)
{
	tailleCriniere = paramTailleCriniere;
	Lion::display();
}

void Lion::display()
{
	cout << "Le Lion;"<<endl;
	Animal::display();
}

Lion::~Lion()
{
	
}