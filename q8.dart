//Faça uma sub-rotina que receba um valor inteiro e positivo, calcule e mostre
// seu fatorial.
import 'dart:io';
int fatorial(int valor,int fat){
  if(valor==0){
    return fat;
  }else{
    fat=fat*valor;
    valor --;
  }
  return fatorial(valor, fat);
}
void main(){
  print('Informe o valor do número que será fatoriado: ');
  int fat=1;
  int valor=int.parse(stdin.readLineSync()!);
  print('O fatorial desse número é ${fatorial(valor,fat)}');
}