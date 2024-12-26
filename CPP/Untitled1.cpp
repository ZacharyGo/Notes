#include <iostream>

using namespace std;

void passArray(int *);
int main() {
    int var1 = 5;
    int var2 = 5;

    int *p;
    p = &var1;
    int *p2=&var1;
    *p=10;

    int * const p_const = & var1;

    cout << "var1:"<< var1 <<endl;
    cout << "p:" << p  << "\t *p:" << *p << "\t&p:" << &p <<endl;
    cout << "p_const:" << p_const<< "\t *p_const:" << *p_const <<endl;

    string array_c="Hello";
    cout << array_c << endl;
    array_c = "hello";
    cout << array_c << endl;

    int myArray[10]={10,20,30,40,50,60,70,80,90,100};
    cout << sizeof(myArray)/sizeof(myArray[0])<<endl;
    passArray(&myArray);
}

void passArray(int *myArray2) {

    int myArray3 = *myArray2;
    cout << sizeof(myArray3) /sizeof(myArray3[0]) <<endl;
    for(int i = 0; i< sizeof(myArray2)/sizeof(myArray2[0]); i++)
 {

     cout << "myArray2[" << i << "]:" << myArray2[i] << endl;

 }
}
