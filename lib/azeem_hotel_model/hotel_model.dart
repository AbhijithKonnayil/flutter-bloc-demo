class Hotel{
  String id;
  String name;
  String image;
  String phone;
  String email;
  String location;
  String rating;
  String startingprice;

  Hotel(String email, String id, String image, String location, String name, String phone, String rating, String startingprice);

  Map toJSON(Hotel h){
    return {
      "email": h.email,
      "id": h.id,
      "image": h.image,
      "location": h.location,
      "name": h.name,
      "phone": h.phone,
      "rating": h.rating,
      "startingprice": h.startingprice
    };
  }
  Hotel fromJSON(Map doc){
    return Hotel(
      doc["email"],
      doc["id"],
      doc["image"],
      doc["location"],
      doc["name"],
      doc["phone"],
      doc["rating"],
      doc["startingprice"],
    );
  }
}