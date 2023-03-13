//Faça uma sub-rotina que receba como parâmetro o raio de uma esfera, calcule
// e mostre no programa principal o seu volume: v = 4/3 * R3.
import 'dart:io';
import 'dart:math';
double V(double r){
  double vol;
  vol=4/3*pi*pow(r, 3);
  return vol;

}
void main(){
  print('Informe o valor do raio: ');
  double r=double.parse(stdin.readLineSync()!);
  double volume=V(r);
  print('4/3*${pi}+$r³= $volume');
}