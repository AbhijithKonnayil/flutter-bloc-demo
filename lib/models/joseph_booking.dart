class Booking {
  final int bookingId;
  final int customerId;
  final String customerName;
  final int phone;
  final int status;
  final int roomId;
  final String image;
  final int price;
  final String description;
  final int paymentId;
  final String paymentMode;

  Booking(
      this.bookingId,
      this.customerId,
      this.customerName,
      this.description,
      this.image,
      this.paymentId,
      this.paymentMode,
      this.phone,
      this.price,
      this.roomId,
      this.status);

  Booking.fromJson(Map<String, dynamic> json)
      : bookingId = json['bookinId'],
        customerId = json['customerId'],
        customerName = json['customerName'],
        description = json['description'],
        image = json['image'],
        paymentId = json['paymentId'],
        paymentMode = json['paymentMode'],
        phone = json['phone'],
        price = json['price'],
        roomId = json['roomId'],
        status = json['status'];

  Map<String, dynamic> toJson() => {
        'bookingId': bookingId,
        'customerId': customerId,
        'customerName': customerName,
        'description': description,
        'image': image,
        'paymentId': paymentId,
        'paymentMode': paymentMode,
        'phone': phone,
        'price': price,
        'roomId': roomId,
        'status': status
      };
}