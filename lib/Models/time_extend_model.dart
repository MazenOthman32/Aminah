class TimeExtensionModel {
  int hours;
  final int pricePerHour;

  TimeExtensionModel({required this.hours, required this.pricePerHour});

  int get totalPrice => hours * pricePerHour;
}
