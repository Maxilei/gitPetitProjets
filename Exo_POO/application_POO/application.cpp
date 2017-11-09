#include "application.h"

void Application::afficherMenu()
{
	//Liste des choix (=menu)
	cout<<"Choisissez l'option souhaiter en tapant la lettre correspondante :"<<endl;
	if(vectPersonnes.size()>0)
	{
		cout<<" (r)Rechercher \t\t";
		cout<<" (d)Afficher \n";
	}
	cout<<" (a)Ajouter \t\t";
	cout<<" (q)Quitter"<<endl;		
	cout << "Entrez votre choix : ";
}

char Application::saisieControleDuChoixUtilisateur()
{
	//penser à contrôler
	char leChoix;
	string saisie;
	getline(cin,saisie);
	leChoix=saisie[0];
	if (!(leChoix=='a' or leChoix=='r' or leChoix=='d' or leChoix=='q' or leChoix=='A' or leChoix=='R' or leChoix=='D' ))
	{
		cout<<endl<< "Veuilez entrer un choix valide."<<endl;
	}
	else 
	{
		return leChoix;
	}
}

void Application::ajouterPersonne()
{
	Person nouvellePersonne;
	cout <<endl;
	nouvellePersonne.input();
	vectPersonnes.push_back(nouvellePersonne);
	cout <<endl;
}

void Application::afficherToutesLesPersonnes()
{
	cout <<endl;
	if (vectPersonnes.size()>0)
	{
		for (int i = 0; i < vectPersonnes.size(); i++)
		{
			vectPersonnes[i].display();
		}
	}
	else 
		cout<<"Il n'y a encore personne."<<endl;
	
}

Person Application::rechercherUnePersonne (string prenomRecherche)
{
	// cout<<"Person Application::rechercherUnePersonne (string prenomRecherche)"<<endl;
	cout<< "Prénom OU Nom a rechercher : ";
	Person moi("","","");
	getline(cin,prenomRecherche);
	cout<<endl;
	int nbPersonne=vectPersonnes.size();
	//cout<<"nombre de personne:"<<nbPersonne<<endl;
	for (int i = 0; i < nbPersonne; i++)
	{
		//cout << "test1";
		if (vectPersonnes[i].getSurname()==prenomRecherche or vectPersonnes[i].getName()==prenomRecherche)
		{
			// cout<< "test2"<< endl;w
			// cout <<"test3"<<endl;
			// cout << "test4"<<endl;
			return vectPersonnes[i];
		}
	//cout<<"test5"<<endl;
	}
	//Si la personne n'est pas trouvé, moi est sorti par défaut, pour éviter les erreurs
	return moi;	
	//cout<<"test6"<<endl;
}

void Application::realisationActionCorrespondanteAuChoix(char leChoix)	
{
	string prenomRecherche;
	Person trouvee;
	//Liste des choix (=menu)
	switch (leChoix)
	{
		case 'a':
			ajouterPersonne();
			break;
		case 'r':
			trouvee=rechercherUnePersonne(prenomRecherche);
			if (trouvee.getSurname()=="")
			{
				cout<< endl<<"La personne recherchée n'a pas été trouvée, Veuilez réessayer."<<endl;
			}
			else
			{
				trouvee.display();
			}
			break;
		case 'd':
			afficherToutesLesPersonnes();
			//cout<<"test8"<<endl;
			break;
	}
	cout << endl;
}

void Application::run()
{
	char leChoixDeLutilisateur;
	do
	{
		afficherMenu();
		leChoixDeLutilisateur = saisieControleDuChoixUtilisateur();
		realisationActionCorrespondanteAuChoix(leChoixDeLutilisateur);
		//cout << "test7"<<endl;
	}while(!(leChoixDeLutilisateur =='q'));
}