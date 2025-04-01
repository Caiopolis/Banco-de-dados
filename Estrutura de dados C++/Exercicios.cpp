#include "iostream"
#include "math.h"
#include "cstdlib"
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double  volume= 0,  comprimento= 0, largura = 0, altura = 0;

cout << "\nDigite o valor do comprimento da sua caixa:" << endl;
cin >> comprimento ;
cout << "\nDigite o valor da altura da caixa:" << endl;
cin >> altura;
cout << "\nDigite o valor da largura:" << endl;
cin >> largura;
volume = altura * comprimento * largura;
cout << "\nO volume da sua caixa é de:" << volume << endl;
system("sleep 0");
return 0; }

// Exercicio 2

#include "iostream"
#include "math.h"
#include "cstdlib"
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double  prestacao= 0,  valor= 0, taxa = 0, tempo = 0;

cout << "\nQual o valor inicial da sua prestação?" << endl;
cin >> valor;
cout << "\nQual o tempo de atraço do pagamento? (meses)" << endl;
cin >> tempo;
cout << "\nQual a taxa de atraço do pagamento?" << endl;
cin >> taxa;
prestacao = valor + ((valor * taxa/100) * tempo);
cout << "\nSegundo as suas informações coletadas, o valor da sua prestacao atual é de: " << prestacao << endl;

system("sleep 0");
return 0; }

// exercicio 3

#include "iostream"
#include "math.h"
#include "cstdlib"
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double  distancia= 0,  velocidadeM= 0, tempo = 0, litros_usados = 0;
 cout << "\nDigite o tempo da sua viagem:" << endl;
 cin >> tempo;
 cout << "\nDigite a velocidade media da sua viagem:" << endl;
 cin >> velocidadeM;
 distancia = velocidadeM * tempo;
 litros_usados = distancia / 12;
 cout << "\nentão temos: \nvelocidade media de: " << velocidadeM  <<"KM/h \nDistancia de: " << distancia << "KM";
 cout << "\nTempo de: " << tempo << "H \nLitros usados de: " << litros_usados << "L" << endl;
system("sleep 0");
return 0; }

// exercicio 4

#include "iostream"
#include "math.h"
#include "cstdlib"
#define pi 3.14
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double raio = 0, altura = 0, volume = 0;

cout << "\nAqui vamos calcular o volume de cilindros" << endl;
cout << "\nDigite o valor do raio cilindrico:" << endl;
cin >> raio;
cout << "\nAgora digite o valor da altura do cilindro:" << endl;
cin >> altura;
volume = pi * pow(raio,2) * altura;
cout << "\nO volume do seu cilindro é: " << volume << endl;
system("sleep 0");
return 0; }

// exercicio 5
#include "iostream"
#include "math.h"
#include "cstdlib"
#define pi 3.14
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double C = 0, F = 0;
cout << "\nDigite o valor em Fahrenheit que transformaremos em Celsius \n";
cin >> F;
C = (F - 32) * 5/9;
cout << "\nO valor em Celsius é: " << C << endl;

system("sleep 0");
return 0; }

// exercicio 6

#include "iostream"
#include "math.h"
#include "cstdlib"
using namespace std;
int main() {
system("clear");
setlocale(LC_ALL, "Portuguese");
double C = 0, F = 0;
cout << "\nDigite o valor em Celsius que transformaremos em Fahrenheit" << endl;
cin >> C;
F = (9 * C + 160)/5;
cout << "\n O valor em Fahrenheit é: " << F << endl;

system("sleep 0");
return 0; }