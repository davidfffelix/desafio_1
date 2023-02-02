import 'dart:io';

void main() {
  // var nomeCompleto = 'David Felix'; Inferência de tipo
  // Object nomeCompleto = 'David Felix';

  // String nomeCompleto = 'David Felix';
  // dynamic nomeCompleto = 'David Felix';

  print('Qual é a sua idade?');
  String? entrada = stdin.readLineSync();
    if (entrada != null) {
  int idade = int.parse(entrada);
  print('Sua idade $idade.');
  }
}
