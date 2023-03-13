//Faça uma sub-rotina que receba um valor inteiro e verifique se ele é
// positivo ou negativo.
import 'dart:io';
String? sinal(int n){
  if(n>0){
  return 'Positivo';
  }
  else if(n<0){
    return 'Negativo';
  }
  return 'Número igual a 0';
}
void main(){
  print('Informe um valor: ');
  int v=int.parse(stdin.readLineSync()!);
  print(sinal(v));
}