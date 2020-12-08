class Booking {
  String bookingId;
  String customerId;
  String customerName;
  int phoneNumber;
  String status;
  int roomId;
  String roomImage;
  double price;
  String description;
  String paymentId;
  String paymentMode;

  Booking(
    this.bookingId,
    this.customerId,
    this.customerName,
    this.phoneNumber,
    this.status,
    this.roomId,
    this.roomImage,
    this.price,
    this.description,
    this.paymentId,
    this.paymentMode,
  );

  Booking.fromJson(Map<String, dynamic> json) {
    this.bookingId = json['bookingId'];
    this.customerId = json['customerId'];
    this.customerName = json['customerName'];
    this.phoneNumber = json['phoneNumber'];
    this.status = json['status'];
    this.roomId = json['roomId'];
    this.roomImage = json['roomImage'];
    this.price = json['price'];
    this.description = json['description'];
    this.paymentId = json['paymentId'];
    this.paymentMode = json['paymentMode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bookingId'] = this.bookingId;
    data['customerId'] = this.customerId;
    data['customerName'] = this.customerName;
    data['phoneNumber'] = this.phoneNumber;
    data['status'] = this.status;
    data['roomId'] = this.roomId;
    data['roomImage'] = this.roomImage;
    data['price'] = this.price;
    data['description'] = this.description;
    data['paymentId'] = this.paymentId;
    data['paymentMode'] = this.paymentMode;
  }
}
