class Customer {

  int id;
  String name;
  String emai1;
  double phoneNo;

  Map<String, dynamic> address;

  Customer(this.id, this.name, this.address, this.phoneNo, this.emai1);

  Customer.fromJson(Map<String, dynamic> json):
  id = json['id'],
  name = json['name'],
  emai1= json['email'],
  phoneNo= json['phoneNo'],
  address = json['address'];
Map<String, dynamic>toJson()=>{
  'id': id,
  'name': name,
  'email': emai1,
  'phoneNo': phoneNo,
  'address': address,

};
}
