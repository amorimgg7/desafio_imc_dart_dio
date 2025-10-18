import 'package:test/test.dart';
import 'package:desafio_imc_dio/desafio_imc_dio.dart';

void main() {
  group('Teste de classificação de IMC', () {
    test('Magreza grave', () {
      final pessoa = Pessoa(nome: 'A', peso: 40, altura: 1.80);
      expect(pessoa.ClassificarIMC(), equals('Magreza grave'));
    });

    test('Magreza moderada', () {
      final pessoa = Pessoa(nome: 'B', peso: 46, altura: 1.80);
      expect(pessoa.ClassificarIMC(), equals('Magreza grave'));
    });

    test('Magreza leve', () {
      final pessoa = Pessoa(nome: 'C', peso: 55, altura: 1.80);
      expect(pessoa.ClassificarIMC(), equals('Magreza moderada'));
    });

    test('Saudável', () {
      final pessoa = Pessoa(nome: 'D', peso: 70, altura: 1.75);
      expect(pessoa.ClassificarIMC(), equals('Saudável'));
    });

    test('Sobrepeso', () {
      final pessoa = Pessoa(nome: 'E', peso: 85, altura: 1.75);
      expect(pessoa.ClassificarIMC(), equals('Sobrepeso'));
    });
  });
}
