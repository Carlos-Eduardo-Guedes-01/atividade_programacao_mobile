//Faça uma sub-rotina que receba como parâmetro um valor inteiro e positivo N,
// indicando a quantidade de parcelas de uma soma S, calculada pela fórmula:
import 'dart:io';

double sequencia(num valor,num c, double seq,num valor2,int quant){
  if(valor<=c){
    return seq;
  }
  else{
    seq=seq+valor2/(c+4);
    print('$valor2 / ${c+4}+');
    valor2+=quant;
    quant+=2;
    c++;
  }
  return sequencia(valor, c, seq,valor2,quant);
}
void main(){
  print('Informe um valor: ');
  num valor=int.parse(stdin.readLineSync()!);
  print('Soma da sequência é ${sequencia(valor,0,0,2,3)}');
}