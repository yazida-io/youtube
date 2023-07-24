abstract class Number<T> {
  late T value;

  Number(this.value);

  @override
  String toString() {
    return "[value => ${value}]";
  }

  T doubleTheNumber();
}

class Integer extends Number<int> with SayHello {
  Integer(super.value);

  @override
  int doubleTheNumber() {
    return this.value * 2;
  }
}

class Double extends Number<double> {
  Double(super.value);

  @override
  double doubleTheNumber() {
    return this.value * 2;
  }
}

mixin SayHello {
  String sayHello(String name) {
    return "Hello, $name !";
  }
}

extension UpperCaseString on String {
  String capitalize() {
    return this.toUpperCase();
  }
}

void main() {
  var number = Integer(10);
  var doubleNumber = Double(10.7);

  print(number.sayHello("Mouctar"));
}
