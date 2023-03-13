//Crie uma sub-rotina que receba como parâmetro a altura (alt) e o sexo de uma
// pessoa e retorne seu peso ideal.Para homens, deverá calcular o peso ideal 
//usando a fórmula:
// peso ideal = 72.7 *alt − 58; para mulheres: peso ideal = 62.1 *alt − 44.7.
import 'dart:io';
double peso_ideal(String sexo, double altura){
  if(sexo=='M' || sexo=='Masculino' || sexo =='masculino' || sexo=='m'){
    return (72.7*altura-58);
  }
  else if(sexo=='F' || sexo=='Feminino' || sexo =='feminino' || sexo=='f'){
    return (62.1*altura-44.7);
  }
  return 1;
}
void main(){
  print('Informe seu sexo: ');
  String? sexo=stdin.readLineSync()!;
  print('Informe sua altura em mestros: ');
  double altura=double.parse(stdin.readLineSync()!);
  print('Para o sexo $sexo e altura $altura o peso ideal é ${peso_ideal(sexo, altura)}');
}