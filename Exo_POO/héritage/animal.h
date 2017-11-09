#include <iostream>
using namespace  std;

class Animal
{
public:
	void display();
	static void displayNbAnimaux();
	Animal(string nom, string ddn, Animal* pere, Animal* mere);
	~Animal();
private:

	static int nbAnimaux;
	string nom;
	string ddn;
	Animal* pere;
	Animal* mere;

};