import 'dart:io';

import 'package:meu_app/classes/pessoa.dart';
import 'package:meu_app/models/utils.dart';

void main(List<String> arguments) {
  print("Calculadora de IMC");

  String name = Utils.readConsole("Informe o seu nome:");
  try {
    if (name.trim() == "") {
      throw Exception("Nome Invalido!");
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  double weight;
  try {
    weight = Utils.readConsoleDouble("Informe o seu Peso, Ex: 75");
  } catch (e) {
    print(e);
    exit(0);
  }

  double height;
  try {
    height = Utils.readConsoleDouble("Informe sua altura, Ex: 1.75");
  } catch (e) {
    print(e);
    exit(0);
  }

  Pessoa p1 = Pessoa(name, weight, height);
  p1.setName(name);
  p1.setWeight(weight);
  p1.setHeight(height);

  double imc = p1.returnImc();

  if (imc < 16) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Magreza grave",
    );
  } else if (imc > 16 && imc < 17) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Magreza moderada",
    );
  } else if (imc > 17 && imc < 18.5) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Magreza leve",
    );
  } else if (imc > 18.5 && imc < 25) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Saudavel",
    );
  } else if (imc > 25 && imc < 30) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Sobrepeso",
    );
  } else if (imc > 30 && imc < 35) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Obesidade Grau I",
    );
  } else if (imc > 35 && imc < 40) {
    print(
      "${p1.getName()} seu resultado de imc é ${imc.roundToDouble()}, representando: Obesidade Grau II (severa)",
    );
  } else if (imc >= 40) {
    print(
      "${p1.getName()} seu resutlado de imc é ${imc.roundToDouble()}, representando: Obesidade Grau  III (morbida)",
    );
  }
}
