#ifndef LION
#define LION

#include "animal.h"

class Lion: public Animal
{
public:
	void display();
	Lion(string nom, string ddn, Animal* pere, Animal* mere, int tailleCriniere);
	~Lion();
	void crier();
	
private:
	int tailleCriniere;
};

#endif
