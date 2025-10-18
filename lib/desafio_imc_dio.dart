class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double CalcularIMC() {
    return peso / (altura * altura);
  }

  String ClassificarIMC() {
    final imc = CalcularIMC();
    if (imc < 16) return 'Magreza grave';
    if (imc >= 16 && imc < 17) return 'Magreza moderada';
    if (imc >= 17 && imc < 18.5) return 'Magreza leve';
    if (imc >= 18.5 && imc < 25) return 'Saudável';
    if (imc >= 25 && imc < 30) return 'Sobrepeso';
    if (imc >= 30 && imc < 35) return 'Obesidade grau I';
    if (imc >= 35 && imc < 40) return 'Obesidade grau II(Severa)';
    if (imc >= 40) 'Obesidade Grau III (mórbida)';
    return 'Fora da classificação esperada';
  }
}
