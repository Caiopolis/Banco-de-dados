#include <iostream>
#include <cstdlib>
#include <cstring>
using namespace std;

struct Pessoa {
    char nome[100];
    float salario;
    Pessoa* proximo;
};

Pessoa* topo = NULL;

void empilhar() {
    Pessoa* nova = (Pessoa*) malloc(sizeof(Pessoa));
    if (nova == NULL) {
        cout << "Erro ao alocar memória!\n";
        return;
    }

    cout << "Digite o nome: ";
    cin.ignore();
    cin.getline(nova->nome, 100);

    cout << "Digite o salario: ";
    cin.ignore();
    cin >> nova->salario;

    nova->proximo = topo;
    topo = nova;

    cout << "sucesso!\n";
}

void desempilhar() {
    if (topo == NULL) {
        cout << "Pilha vazia!\n";
        return;
    }

    Pessoa* temp = topo;
    topo = topo->proximo;
    free(temp);
}

void listar() {
    if (topo == NULL) {
        cout << "Pilha vazia!\n";
        return;
    }

    Pessoa* atual = topo;
    cout << "Pessoas na pilha:\n";
    while (atual != NULL) {
        cout << atual->nome << " - R$ " << atual->salario << endl;
        atual = atual->proximo;
    }
}

void destruirPilha(){
    Pessoa* temp;
    while(topo != NULL){
        temp = topo;
        topo = topo -> proximo;
        free(temp);
    }
    cout << "A pilha foi destruida";
}

int main() {
    int opcao;

    do {
        cout << "\n--- MENU ---\n";
        cout << "1. Empilhar\n";
        cout << "2. Desempilhar\n";
        cout << "3. Exibir Pilha\n";
        cout << "4. Sair\n";
        cout << "0. Destruir Pilha\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                empilhar();
                break;
            case 2:
                desempilhar();
                break;
            case 3:
                listar();
                break;
            case 4:
                cout << "Saindo...\n";
                break;
            case 0:
                destruirPilha();
                break;
            default:
                cout << "Opcao invalida!\n";
        }
    } while (opcao != 4);

    while (topo != NULL) {
        desempilhar();
    }

    return 0;
}
