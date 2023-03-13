import 'dart:io';
List<int> valores(int num){
  List<int> vet=[];
  for(int c=1;c<=num;c++){
    vet.add(c);
  }
  return vet;
}
void main() {
  int n;
  print('Informe um valor maior que 0');
  n=int.parse(stdin.readLineSync()!);
  List<int> val=valores(n);
  print(val);
}
