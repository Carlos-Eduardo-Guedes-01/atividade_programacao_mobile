//Foi realizada uma pesquisa entre 15 habitantes de uma região. Os dados 
//coletados de cada habitante foram: idade, sexo, salário e número de filhos.
//Faça uma sub-rotina que leia esses dados armazenando-os em vetores. Depois, 
//crie sub-rotinas que recebam esses vetores como parâmetro e retornem a média
// de salário entre os habitantes, a menor e a maior idade do grupo e a quanti-
//dade de mulheres com três filhos que recebem até R$ 500,00 (utilize uma sub-
//rotina para cada cálculo).
import 'dart:io';
import 'dart:svg';
void ler_dados(){
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
  print('A média salárial é ${media_salarios(salario)}');

  print('A maior idade entre eles é ${idade_maior(idade)}');
  print('A menor idade entre eles é ${idade_menor(idade,0)}');
  print('Quantidade de mulheres com 3 filhos, recebem de 500 reais abaixo é ${valida_mulher(sexo, numero_filhos,salario)}');
}
int valida_mulher(List<String>sexo, List<int> numero_filhos, List<double> salario){
  int quantidade=0;
  for(int i=0;i<15;i++){
    if((sexo[i]=='m' || sexo[i]=='M') && numero_filhos[i]==3 && salario[i]<=500){
      quantidade++;
    }
  }
  return quantidade;
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
  ler_dados();
}