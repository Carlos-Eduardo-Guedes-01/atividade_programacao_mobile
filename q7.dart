//Elabore uma sub-rotina que leia um número não determinado de valores positi-
//vos e retorne a média aritmética desses valores. Terminar a entrada de dados
// com o valor zero.
import 'dart:io';
double valores(){
  int q=0;
  print('Informe um número(0 para sair): ');
  double val=double.parse(stdin.readLineSync()!);
  double soma=0;
  while(val!=0){
    print('Informe um número(0 para sair): ');
    val=double.parse(stdin.readLineSync()!);
    soma+=val;
    q++;
  }
  double media=soma/q;
  return media;
}
void main() {
  print('Média dos valores é ${valores()}');
}