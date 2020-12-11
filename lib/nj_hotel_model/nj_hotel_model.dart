import 'dart:ffi';

class NjHotel {
  String hotelName;
  String location;
  String locationMarker;
  int rating;
  double startingPrice;
  bool featureTV;
  bool featureAC;
  String email;
  String phoneNumber;
  int enquiryNumber;

  NjHotel(
    this.hotelName,
    this.location,
    this.locationMarker,
    this.rating,
    this.startingPrice,
    this.featureAC,
    this.featureTV,
    this.email,
    this.phoneNumber,
    this.enquiryNumber
  );

  NjHotel.fromJson(Map<String,dynamic> json)
    : hotelName = json['hotelName'],
    email = json['email'],
    location = json['location'],
    locationMarker = json['locationMarker'],
    rating = json['rating'],
    startingPrice = json['startingPrice'],
    featureAC = json['featuerAC'],
    featureTV = json['featureTV'],
    phoneNumber = json['phoneNumber'],
    enquiryNumber = json['enquiryNumber'];

  Map<String,dynamic> toJson() => {
    'hotelName' : hotelName,
    'email' : email,
    'location' : location,
    'locationMarker' : locationMarker,
    'rating' : rating,
    'startingPrice' : startingPrice,
    'featureAC' : featureAC,
    'featureTV' : featureTV,
    'phoneNumber' : phoneNumber,
    'enquiryNumber' : enquiryNumber
  };

}