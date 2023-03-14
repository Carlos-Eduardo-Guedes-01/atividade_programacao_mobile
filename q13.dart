//Foi realizada uma pesquisa entre 15 habitantes de uma região. Os dados 
//coletados de cada habitante foram: idade, sexo, salário e número de filhos.
//Faça uma sub-rotina que leia esses dados armazenando-os em vetores. Depois, 
//crie sub-rotinas que recebam esses vetores como parâmetro e retornem a média
// de salário entre os habitantes, a menor e a maior idade do grupo e a quanti-
//dade de mulheres com três filhos que recebem até R$ 500,00 (utilize uma sub-
//rotina para cada cálculo).
import 'dart:io';
import 'dart:svg';
List<String> ler_dados(){
  List<int> idade=[],numero_filhos=[];
  List<String> sexo=[];
  List<double> salario=[];
  for(int i=0; i<15 ;i++){
    print('Informe a idade do ${i+1}º habitante: ');
    idade.add(int.parse(stdin.readLineSync()!));
    print('Informe o sexo do ${i+1}º habitante: ');
    sexo.add(stdin.readLineSync()!);
    print('Informe o salario do ${i+1}º habitante: ');
    salario.add(double.parse(stdin.readLineSync()!));
    print('Informe o número de filhos do ${i+1}º habitante: ');
    numero_filhos.add(int.parse(stdin.readLineSync()!));
  }
  double media_salarial=media_salarios(salario);
  int maior_idade=idade_maior(idade);
  int menor_idade=idade_menor(idade,0);
}
int valoda_mulher(List<String>sexo){
  
}
int idade_maior(idade){
  int maior=0;
  for (int i=0;i<15;i++){
    if(idade[i]>maior){
      maior=idade[i];
    }
  }
  return maior;
}
int idade_menor(List<int> idade, int menor){
  for (int i=0;i<15;i++){
  if(idade[i]<menor){
        menor=idade[i];
      }
    }

  return menor;
}
double media_salarios(List<double> salario){
  double soma=0;
  double media=0;
  for(int i=0;i<15;i++){
    soma+=salario[i];
  }
  media=soma/15;
  return media;
  
}
void main(){
  

}