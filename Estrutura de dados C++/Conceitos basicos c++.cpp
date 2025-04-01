#include "iostream"
#include "math.h"
#include "cstdlib"
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double C = 0, F = 0;
cout << "\nDigite o valor em Celsius que transformaremos em Fahrenheit\n";
cin >> C;
F = (9 * C + 160)/5;
cout << "\nO valor em Fahrenheit é: " << F << endl;

system("sleep 0");
return 0; }