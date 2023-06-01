class MyIterable extends Iterable<int> {
  final List<int> list = [];

  @override
  Iterator<int> get iterator => list.iterator;
}

void main() {
  var iterable = new MyIterable();
  iterable.list.addAll([1, 2, 3]);

  iterable.forEach((element) {
    print(element);
  });

  /*
  List<int> numbers = [1, 2, 3, 3];
  Set<int> sets = {1, 2, 3};

  sets.add(5);
  sets.remove(3);

  print(numbers);

  print(sets);

  Map<int, String> maps = {1: "Un", 2: "Deux"};

  maps.forEach((key, value) => print("(K,V) = ($key, $value)"));

  numbers.forEach((element) => print(element));
   */
}
