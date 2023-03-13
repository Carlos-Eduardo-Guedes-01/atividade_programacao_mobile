//Elabore uma sub-rotina que receba dois números como parâmetros e retorne 0, 
//se o primeiro número for divisível pelo segundo número. Caso contrário, de-
//verá retornar o próximo divisor.
import 'dart:io';
num teste(num n2, num n1){
  if(n1<n2){
    if(n1%n2!=0){
      num c=n1;
      num divisor=n2;
      while(c<n2){
        c++;
        if(c%n2==0){
          return c;
        }
        else{
          c++;
        }
      }
    }
  }
  else{
    print('Você inseriu um dividendo maior do que o divisor');
    return 404;
  }
  return 0;
}
void main(){
  num n1,n2;
  print('Informe o divisor: ');
  n2=int.parse(stdin.readLineSync()!);
  print('Informe o dividendo: ');
  n1=int.parse(stdin.readLineSync()!);
  print('Resultado da análise: ${teste(n2,n1)}');
}

