void main() {

  Uri.http("");

  try {
    int result = withdraw(100, 0);
  } catch (e) {
    print(e);
  }
}

int withdraw(int amount, int balance) {
  if (amount > balance) {
    throw InsufficientFundException("sold insuffisant");
  }

  return balance - amount;
}

class InsufficientFundException implements Exception {
  final String message;

  InsufficientFundException(this.message);

  @override
  String toString() {
    return "[ERROR]: ${message}";
  }
}
