#include <iostream>
using namespace std;

class Person
{	
	private:
		string name;
		string surname;
		string birthdate;
	public:
	//Déclaration des accesseurs : 
		string getName();
		void setName(string name);

		string getSurname();
		void setSurname(string surname);

		string getBirthdate();
		void setBirthdate(string birthdate);
		
		//Déclaration fonction d'affichage :
		void display();
		//Déclaration fonction de saisie :
		void input();

		Person();

		Person(string hisName, string hisSurname, string hisBirthdate);
};

