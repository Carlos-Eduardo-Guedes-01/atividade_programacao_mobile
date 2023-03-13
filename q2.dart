//Crie uma sub-rotina que receba três números inteiros como parâmetros,
// representando horas, minutos e segundos, e os converta em segundos.
// Exemplo: 2h, 40min e 10s correspondem a 9.610 segundos.
import 'dart:io';
import 'dart:math';
num converte(int hora,int minuto,int segundo){
  num segundos=(hora*pow(60, 2))+(minuto*60)+segundo;
  return segundos;
}
void main(){
  int hora,minuto,segundo;
  print('Informe as horas: ');
  hora=int.parse(stdin.readLineSync()!);
  print('Informe os minutos: ');
  minuto=int.parse(stdin.readLineSync()!);
  print('Informe os segundos: ');
  segundo=int.parse(stdin.readLineSync()!);
  num segundos=converte(hora, minuto, segundo);
  print('Valor em segundos é $segundos segundos');
}