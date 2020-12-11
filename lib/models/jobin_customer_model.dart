class Customer {
  String id;
  String name;
  String email;
  String phoneNo;
  Map<String, dynamic> address;

  Customer(this.id, this.name, this.address, this.phoneNo, this.email);

  Customer.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        phoneNo = json['phoneNo'],
        address = json['address'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phoneNo': phoneNo,
        'address': address,
      };
}
