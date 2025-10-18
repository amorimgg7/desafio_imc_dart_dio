import 'package:desafio_imc_dio/desafio_imc_dio.dart' as desafio_imc_dio;
import 'dart:io';

void main(List<String> arguments) {
  print('=== Calculadora de IMC ===\n');

  try {
    stdout.write('Digite o nome: ');
    final nome = stdin.readLineSync();
    if (nome == null || nome.isEmpty) throw Exception('Nome inválido.');

    stdout.write('Digite o peso (kg): ');
    final pesoInput = stdin.readLineSync();
    final peso = double.parse(pesoInput!);
    if (peso <= 0) throw Exception('Peso deve ser maior que zero.');

    stdout.write('Digite a altura (m): ');
    final alturaInput = stdin.readLineSync();
    final altura = double.parse(alturaInput!);
    if (altura <= 0) throw Exception('Altura deve ser maior que zero.');

    final pessoa = desafio_imc_dio.Pessoa(
      nome: nome,
      peso: peso,
      altura: altura,
    );

    final imc = pessoa.CalcularIMC();
    final classificacao = pessoa.ClassificarIMC();

    print('\n=== Resultado ===');
    print('Nome: ${pessoa.nome}');
    print('IMC: ${imc.toStringAsFixed(2)}');
    print('Classificação: $classificacao');
  } catch (e) {
    print('\nErro(${e.toString()})');
  }
}
