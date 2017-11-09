#include <vector>
#include "kangourou.h"
#include "lion.h"

int main()
{
	//Lion pumba("Pumba","14/1/2000",NULL,NULL,49);
	//Kangourou kangourex("Kangourex","12/10/1997",NULL,NULL);
	//kangourex.display();

	vector<Animal*> vectMesAnimaux;
	vectMesAnimaux.push_back(new Lion("Simba","14/07/1789",NULL,NULL,49));
	vectMesAnimaux.push_back(new Kangourou("Kangoo","31/12/2000",NULL,NULL));
	vectMesAnimaux.push_back(new Lion("Mufasa","31/12/1975",NULL,NULL,65));
	vectMesAnimaux.push_back(new Kangourou("Kangourex","3/3/2003",NULL,NULL));

	unsigned int nbAnimaux = Animal::nbAnimaux;

	for (unsigned int noAnimal = 0; noAnimal < nbAnimaux; ++noAnimal)
	{
		vectMesAnimaux[ noAnimal ]->display();	
		vectMesAnimaux[ noAnimal ]->crier();		
		cout <<endl	;
	}


for (unsigned int noAnimal = 0; noAnimal < nbAnimaux; ++noAnimal)
	{
		delete vectMesAnimaux[noAnimal];
	}

	return 0;
}