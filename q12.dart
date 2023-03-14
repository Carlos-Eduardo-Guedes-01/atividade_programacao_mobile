//Crie uma sub-rotina que receba como parâmetro dois valores X e Z, calcule e
//retorne Xz sem utilizar funções ou operadores de potência prontos.
import 'dart:io';
int potencia(int base,int expoente,int res){
  if(expoente<1){
    return res;    
  }
  else{
    res=res*base;
    expoente--;
  }
  return potencia(base, expoente, res);
}
void main(){
  print('Informe a base: ');
  int base =int.parse(stdin.readLineSync()!);
  print('Informe o expoente: ');
  int expoente =int.parse(stdin.readLineSync()!);
  print('O valor desse cálculo é ${potencia(base, expoente, 1)}');
}