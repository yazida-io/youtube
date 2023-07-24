import 'package:test/test.dart';

import '../integer_operations.dart';

void main() {
  group("integer", () {
    test("test add two integers", () {
      expect(add(1, 2), 3);
    }, timeout: Timeout.factor(2));
  }, retry: 3);
}
