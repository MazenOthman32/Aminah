class DayOrderModel {
  final String name;
  final double rating;
  final bool status;
  final int orderNumber;
  final String orderType;
  final double timeFrom;
  final double timeTo;
  final String paymentStatus;
  final double paymentAmount;
  final String imagePath;

  DayOrderModel({
    required this.name,
    required this.rating,
    required this.status,
    required this.orderNumber,
    required this.orderType,
    required this.timeFrom,
    required this.timeTo,
    required this.paymentStatus,
    required this.paymentAmount,
    required this.imagePath,
  });
}
