#include "lion.h"

int main()
{
	Animal::displayNbAnimaux();
	Animal bambi("Bambi","01/10/1997",NULL,NULL);
	bambi.display();
	Animal pumba("Pumba","14/1/2000",NULL,NULL);
	pumba.display();
	Lion simba("Simba","12/10/1997",NULL,NULL,49);
	return 0;
}