#include <iostream>

using namespace std;

int main()
{
    int varA = 10;
    int varB = 10;
    int varC = 10;
    int *pA = &varA;
    int * const pB=&varB; //Can not change the address pointing to but can change the value of the address it is pointing to
    const int * const pC=&varC; //Can not change the address and value it is pointing to
    int ** ppD = &pA; // Pointer pointing to another pointers address
    cout << "int varA = 10;" << endl;
    cout << "int varB = 10;" << endl;
    cout << "int varC = 10;" << endl;
    cout << "int * const pB=&varB;" << endl;
    cout << "const int * const pC=&varC;" << endl;
    cout << "int ** ppD = &pA;" << endl;
    cout << "" << endl;
    cout << "varA:  " << varA << endl;
    cout << "&varA: " << &varA << endl;
    cout << "varB:  " << varB << endl;
    cout << "&varB: " << &varB << endl;
    cout << "varC:  " << varC << endl;
    cout << "&varC: " << &varC << endl;
    cout << "pA:    " << pA << endl;
    cout << "*pA:   " << *pA << endl;
    cout << "&pA:   " << &pA << endl;
    cout << "pB:    " << pB << endl;
    cout << "*pB:   " << *pB << endl;
    cout << "&pB:   " << &pB << endl;
    cout << "pC:    " << pC << endl;
    cout << "*pC:   " << *pC << endl;
    cout << "&pC:   " << &pC << endl;
    cout << "ppD:    " << ppD << endl;
    cout << "*ppD:   " << *ppD << endl;
    cout << "&ppD:   " << &ppD << endl;
    cout << "_____________" << endl;
    pA=&varB;
    *pA = 20;
    *pB=30;
    cout << "pA=&varB;" << endl;
    cout << "*pA = 20;" << endl;
    cout << "*pB=30;" << endl;
    cout << "_____________" << endl;
    cout << "varA:  " << varA << endl;
    cout << "&varA: " << &varA << endl;
    cout << "varB:  " << varB << endl;
    cout << "&varB: " << &varB << endl;
    cout << "varC:  " << varC << endl;
    cout << "&varC: " << &varC << endl;
    cout << "pA:    " << pA << endl;
    cout << "*pA:   " << *pA << endl;
    cout << "&pA:   " << &pA << endl;
    cout << "pB:    " << pB << endl;
    cout << "*pB:   " << *pB << endl;
    cout << "&pB:   " << &pB << endl;
    cout << "pC:    " << pC << endl;
    cout << "*pC:   " << *pC << endl;
    cout << "&pC:   " << &pC << endl;
    cout << "ppD:    " << ppD << endl;
    cout << "*ppD:   " << *ppD << endl;
    cout << "&ppD:   " << &ppD << endl;
    return 0;
}
