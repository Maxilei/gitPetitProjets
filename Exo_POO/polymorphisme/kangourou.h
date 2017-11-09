#ifndef KANGOUROU
#define KANGOUROU

#include "animal.h"

class Kangourou: public Animal
{
public:
	void display();
	Kangourou(string nom, string ddn, Animal* pere, Animal* mere);
	~Kangourou();
	static int nbKangourou;
	static void displayNbKangourou();
	void crier();
};

#endif