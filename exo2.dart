import 'dart:io';
void main() {
  
  stdout.write('Entrez votre age : ');
  String? input = stdin.readLineSync();
  try {
    int age = int.parse(input!);
    print('Votre age est $age ans.');
  }on FormatException {
    print('Format invalide ! Veuillez entrer un nombre.');
  }finally {
    print('Fin d\'opération');
  }
}



