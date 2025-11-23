import 'package:test/test.dart';
import 'package:meu_app/classes/pessoa.dart';

String imcType(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc > 16 && imc < 17) {
    return "Magreza moderada";
  } else if (imc > 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc > 18.5 && imc < 25) {
    return "Saudavel";
  } else if (imc > 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc > 30 && imc < 35) {
    return "Obesidade Grau I";
  } else if (imc > 35 && imc < 40) {
    return "Obesidade Grau II (severa)";
  } else if (imc >= 40) {
    return "Obesidade Grau  III (morbida)";
  }

  return "Indefinido";
}

void main() {
  group("Classificações de IMC", () {
    test("Magreza grave", () {
      final p = Pessoa("a", 40, 1.70);
      expect(imcType(p.returnImc()), "Magreza grave");
    });

    test("Magreza moderada", () {
      final p = Pessoa("b", 48, 1.70);
      expect(imcType(p.returnImc()), "Magreza moderada");
    });

    test("Magreza leve", () {
      final p = Pessoa("c", 53, 1.70);
      expect(imcType(p.returnImc()), "Magreza leve");
    });

    test("Saudavel", () {
      final p = Pessoa("d", 65, 1.70);
      expect(imcType(p.returnImc()), "Saudavel");
    });

    test("Sobrepeso", () {
      final p = Pessoa("e", 80, 1.70);
      expect(imcType(p.returnImc()), "Sobrepeso");
    });

    test("Obesidade Grau I", () {
      final p = Pessoa("f", 95, 1.70);
      expect(imcType(p.returnImc()), "Obesidade Grau I");
    });

    test("Obesidade Grau II (severa)", () {
      final p = Pessoa("g", 110, 1.70);
      expect(imcType(p.returnImc()), "Obesidade Grau II (severa)");
    });

    test("Obesidade Grau III (morbida)", () {
      final p = Pessoa("h", 125, 1.70);
      expect(imcType(p.returnImc()), "Obesidade Grau  III (morbida)");
    });
  });
}
