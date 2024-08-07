class Transaction {
  final String type;
  final double amount;
  final DateTime dateTime;

  Transaction(
      {required this.type, required this.amount, required this.dateTime});

  // Factory method to create a Transaction from a string date
  factory Transaction.fromString(
      {required String type,
      required double amount,
      required String dateTime}) {
    return Transaction(
      type: type,
      amount: amount,
      dateTime: DateTime.parse(dateTime),
    );
  }
}
