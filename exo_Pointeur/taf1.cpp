#include <iostream> 
using namespace std;

int main()
{
	int nb1, nb2;
	int * pPlusPetit, *pPlusGrand;
	cout << "Entrez un premier nombre : ";
	cin >> nb1;
	cout << "Entrez un deuxième nombre : ";
	cin >> nb2;
	if (nb1 == nb2)
	{
		cout<< "Les nombres doivent être différents"<<endl;		
	}
	else {
		if (nb1 < nb2)
		{
			pPlusGrand = &nb2;
			pPlusPetit = &nb1;
			cout << "l'adresse de "<<*pPlusPetit <<" est "<<&nb1<<endl;
			cout << "l'adresse de "<<*pPlusGrand <<" est "<<&nb2<<endl;

		}
		else
		{
			pPlusGrand = &nb1;
			pPlusPetit = &nb2;
			cout << "l'adresse de "<<*pPlusPetit <<" est "<<&nb2<<endl;
			cout << "l'adresse de "<<*pPlusGrand <<" est "<<&nb1<<endl;
		}
	cout << *pPlusGrand << " est plus grand que "<< *pPlusPetit <<endl; 
	}
	cout << *"0x0000000011"<<endl;
}