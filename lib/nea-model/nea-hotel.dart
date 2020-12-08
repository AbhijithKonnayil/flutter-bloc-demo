class Hotel {
  String name;
  int rating;
  int startingPrice;
  String location;
  String image;
  String phoneNumber;
  String email;

  Hotel(
      {this.email,
      this.image,
      this.location,
      this.name,
      this.phoneNumber,
      this.rating,
      this.startingPrice});

  Map tojson(Hotel hotel) {
    return {
      "name": hotel.name,
      "rating": hotel.rating,
      "startingPrice": hotel.startingPrice,
      "location": hotel.location,
      "image": hotel.image,
      "phoneNumber": hotel.phoneNumber,
      "email": hotel.email
    };
  }

  Hotel fromjson(Map details) {
    return Hotel(
        name: details["name"],
        rating: details["rating"],
        startingPrice: details["startingPrice"],
        location: details["location"],
        image: details["image"],
        phoneNumber: details["phoneNumber"],
        email: details["email"]);
  }
}
