#ifndef ANIMAL
#define ANIMAL

#include <iostream>
using namespace  std;

class Animal
{
public:
	virtual void display();
	static void displayNbAnimaux();
	Animal(string nom, string ddn, Animal* pere, Animal* mere);
	~Animal();
	virtual void crier()=0;
	static int nbAnimaux;

private:
	string nom;
	string ddn;
	Animal* pere;
	Animal* mere;

};
#endif