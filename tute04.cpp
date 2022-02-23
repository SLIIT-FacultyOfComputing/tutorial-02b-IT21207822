/*Exercise 4 - Functions

Write a program to calculate the function called nCr which is defined as

nCr = n!/ r!(n−r)!
Where n! is the factorial of n.

Implement the functions

long Factorial(int no);
long nCr(int n, int r);
Do not modify the main function.*/

#include <iostream>
using namespace std;

long Factorial(int no);
long nCr(int n, int r);

int main() {
  int n, r;
  cout << "Enter a value for n ";
  cin >> n;
  cout << "Enter a value for r ";
  cin >> r;
  cout << "nCr = "<< nCr(n,r)<<endl;
  return 0;
}

long Factorial(int no)
{
  int i, fact=1;
  for(i=1; i<=no; i++)
  {
    fact = fact * i;
  }
  return fact;
}


long nCr(int n, int r)
{
  return (Factorial(n)/(Factorial(r)*Factorial(n-r)));
}

