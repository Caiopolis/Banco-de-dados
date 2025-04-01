//Exercicio 1
#include "iostream"
#include "cstdlib"
#include "string.h"
using namespace std;
int const n=4; int P = 0, S = 0;

struct numeros {
 int numeros[n]; };
numeros tb;

void ler_numeros(){ system("clear");
    for(int i = 0; i < n;i++){
        cout << "Números : ";
        cin >> tb.numeros[i];
    }
}


void calculo_numeros(){
    P = tb.numeros[0] * tb.numeros[2];
    S = tb.numeros[1] + tb.numeros[3];
}


void exibir_numeros() { system("clear");
    cout << "\nNúmeros armazenados:" << endl;
    for (int i = 0; i < n; i++) {
        cout << "Número " << i + 1 << ": " << tb.numeros[i] << endl;
    }
    calculo_numeros();
    cout << "O resultado do produto do 1° com o 3° é: " << P << endl;
    cout << "Já a soma do 2° com o 4° é: " << S << endl;
    system("sleep 10");
    system("clear");
}


int main(){
    int tecla = 0;
    while(tecla != 3){
        cout << "\n 1 - Ler \n 2 - Exibir \n 3 - sair\n Digite: ";
        cin >> tecla;
        
        switch(tecla){
            case 1: ler_numeros(); break;
            case 2: exibir_numeros(); break;
            case 3: exit(0); break;
        }
    } return 0;
}


//Exercicio 2

#include "iostream"
#include "cstdlib"
#include "string.h"
using namespace std;
int NS = 0;

struct salario_reajuste {
 int SM = 0; 
 int PR = 0; };
salario_reajuste tb;



void ler_salario_reajuste(){ system("clear");
    cout << "Digite o seu salario: " << endl;
    cin >> tb.SM ;
    system("sleep 0.5");
    cout << "Digite a porcentagem de reajuste: " << endl;
    cin >> tb.PR;
    system("sleep 2");
    system("clear");
}

void calcular_reajuste(){ 
    NS = (tb.SM * (tb.PR / 100.0)) + tb.SM;
    
}

void exibir_dados(){ system("clear");
  calcular_reajuste();
    cout << "Processando..." << endl;
    system("sleep 3");
    cout << "O seu salario antigo era: " << tb.SM << endl;
    cout << "O valor do reajuste foi de " << tb.PR << "%" << endl;
    cout << "O valor atualizado é: " << NS << endl;
    system("sleep 10");
    system("clear");
}

int main(){
    int tecla = 0;
    while(tecla != 3){
        cout << "\n 1 - Ler \n 2 - Exibir \n 3 - sair\n Digite: ";
        cin >> tecla;
        
        switch(tecla){
            case 1: ler_salario_reajuste(); break;
            case 2: exibir_dados(); break;
            case 3: exit(0); break;
        }
    } return 0;

}




