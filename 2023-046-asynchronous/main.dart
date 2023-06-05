Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 1), () => "Hello $name !");
}

Stream<String> sayHelloManyTimes(String name) async* {
  for (int count = 0; count < 5; count++) {
    yield "$count : ${await sayHello(name)}";
  }
}

void main() {
  print("avant");
  // sayHello("Mouctar").then((value) => print(value));

  sayHelloManyTimes("Mouctar").listen((event) {
    print(event);
  });

  print("après");
}
