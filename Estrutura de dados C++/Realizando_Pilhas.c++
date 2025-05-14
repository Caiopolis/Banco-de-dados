#include "iostream"
#include "cstdlib"
#define max 3
using namespace std;
 
 
typedef struct lifo pilha;
struct lifo { 
    int topo; // posição do último elemento a ser empilhado
    int dado [ max ]; };
 pilha p;
 
 
int lerValor() { 
    int valor;
    cout << "\nDigite o valor a ser empilhado:";
    cin >> valor; 
    return valor; 
}

bool pilhaCheia ( ) {
if ( p.topo == max - 1)
      return true;
return false; 
}
 
bool pilhaVazia () {
if ( p.topo == -1)
return true;
 
return false; }
 
 
void push ( int valor ) {
if ( pilhaCheia () == true) {
   cout << "\nPilha Cheia" << endl;
   system("sleep 3");
   return; 
}
p.topo ++; 
p.dado [ p.topo ] = valor;
 
cout << "\nO valor empilhado foi: " << valor << endl;
system("sleep 2");
}
 
 
void pop () {
if ( pilhaVazia () == true ) { 
    cout << "\nA pilha já está vazia!" << endl;
     system("sleep 2"); 
     return ; }
cout << "\nO valor desempilhado será:" << p.dado [ p.topo ] << endl;
system("sleep 2");
 
p.dado [ p.topo ] = '\0'; // nulo para números inteiros
 
p.topo --; return; 
}
 
void mostrarPilha ( ) {
if ( pilhaVazia () == true ) {
     cout << "\nA pilha está vazia!" << endl;
     system("sleep 2"); 
     return; }
system("clear");
for ( int i=p.topo; i>=0; i--){
      cout << p.dado[i] << endl; }
 
system("sleep 3");
}
 
 
int tela () {
int tecla;
system("clear");
 
cout << "\nMenu\n1 Push\n2 Pop\n3 Mostrar pilha\n4 Sair\nItem:";
cin >> tecla;
 
return tecla; }
 
void controlarPilha () {
int tecla, valor;
 
 
 
do 
{ 
  tecla = tela();
 
  switch ( tecla ) {
  case 1: valor = lerValor();
        push ( valor );
        break;
  case 2: pop(); 
        break;
  case 3: mostrarPilha (); 
  }
 
} while ( tecla != 4 );
 
 
cout << "\nPrograma Finalizado...!" << endl; }
 
 
int main () {
p.topo = -1; // iniciliar o topo
controlarPilha ();
return 0; }