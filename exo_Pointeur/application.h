#include <iostream>
#include <vector>
#include "Person.h"
using namespace std;

class Application
{
public:
	void run();
	vector<Matiere> vectMatiere;
	vector<Section> vectSection;	
private:
	vector <Person*> vectPersonnes;
	void afficherMenu();
	//CONSTRUCTEUR 
	char saisieControleDuChoixUtilisateur();
	void realisationActionCorrespondanteAuChoix(char leChoix);	
	void ajouterPersonne();
	void afficherToutesLesPersonnes();
	Person rechercherUnePersonne(string prenomRecherche);
};