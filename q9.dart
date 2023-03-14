//Crie uma sub-rotina que receba como parâmetro um valor inteiro e positivo e
// retorne a soma dos divisores desse valor.
import 'dart:io';
int soma_divisor(int valor, int valor2,int res){
  if(valor<valor2){
    return res;
  }else{
    if(valor%valor2==0){
      res=res+valor2;
      valor2 ++;
    }
    else{
      valor2 ++;
    }
  }
  return soma_divisor(valor, valor2,res);
}
void main(){
  print('infrome um valor: ');
  int valor=int.parse(stdin.readLineSync()!);
  print('A soma dos divisores desse número é ${soma_divisor(valor, 1, 0)}');
}