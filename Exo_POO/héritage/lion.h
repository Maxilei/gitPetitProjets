#include "animal.h"

class Lion: public Animal
{
public:
	void display();
	Lion(string nom, string ddn, Animal* pere, Animal* mere, int tailleCriniere);
	~Lion();
	
private:
	int tailleCriniere;
};