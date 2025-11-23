import 'dart:convert';
import 'dart:io';

class Utils {
  static String readConsole(String text) {
    print(text);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double readConsoleDouble(String text) {
    print(text);
    String input = stdin.readLineSync(encoding: utf8) ?? "";

    if (input.trim().isEmpty) {
      throw Exception("Valor vazio! Digite um numero.");
    }

    double? number = double.parse(input);

    return number;
  }
}
