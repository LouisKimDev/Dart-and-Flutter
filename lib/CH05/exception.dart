class TooOldForServiceException implements Exception {
  String _name;
  TooOldForServiceException(this._name);
  toString() {
    return "$_name is too old for military service.";
  }
}

void main() {
  print("satrt");

  Map<String, int> enlisted = {"Tom": 21, "Dick": 37, "Harry": 51, "Mark": 52};

  Map<String, int> qualified = {};

  enlisted.forEach((name, age) {
    try {
      age > 50 ? throw TooOldForServiceException(name) : "";
      qualified[name] = age;
      print(age);
    } catch (e) {
      print(e);
    }
  });

  print(
      'finish: \n ${enlisted.length} of ${qualified.length} candidated are valid.');
  print('List of qualified: $qualified');
}
