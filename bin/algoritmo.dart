import 'dart:io';

void main() {
  // var nomeCompleto = 'David Felix'; Infer�ncia de tipo
  // Object nomeCompleto = 'David Felix';

  // String nomeCompleto = 'David Felix';
  // dynamic nomeCompleto = 'David Felix';

  print('Qual � a sua idade?');
  String? entrada = stdin.readLineSync();
    if (entrada != null) {
  int idade = int.parse(entrada);
  print('Sua idade $idade.');
  }
}
