class OrderStep {
  String description;
  DateTime? dateTime;
  bool isCompleted;

  OrderStep({
    required this.description,
    this.dateTime,
    this.isCompleted = false,
  });
}
