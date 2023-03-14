//Elabore uma sub-rotina que receba como parâmetro um valor N (inteiro e maior
// ou igual a 1) e determine o valor da sequência S, descrita a seguir:
import 'dart:io';

double sequencia(int valor,int c, double seq){
  if(valor<c){
    return seq;
  }
  else{
    seq=seq+1/c;
    c++;
  }
  return sequencia(valor, c, seq);
}
void main(){
  print('Informe um valor: ');
  int valor=int.parse(stdin.readLineSync()!);
  print('Soma da sequência é ${sequencia(valor,1,0)}');
}