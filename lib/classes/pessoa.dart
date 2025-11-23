class Pessoa {
  late String _name;
  late double _weight;
  late double _height;

  Pessoa(String name, double weight, double height) {
    _name = name;
    _weight = weight;
    _height = height;
  }

  void setName(String name) {
    _name = name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  void setHeight(double height) {
    _height = height;
  }

  String getName() {
    return _name;
  }

  double getWeight() {
    return _weight;
  }

  double getHeight() {
    return _height;
  }

  double returnImc() {
    var weight = getWeight();
    var height = getHeight();

    double imc = weight / (height * height);
    return imc.isNaN ? 0 : imc;
  }
}
