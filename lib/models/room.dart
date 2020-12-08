class Room{
  String  roomId;
  String  roomNo;
  String imageUrl;
  String description;
  bool hasAC;
  double rating;
  String review;
  double price;

  Room({
  this.roomId,
  
  this.roomNo,
  this.imageUrl
  this.description,
  this.hasAC,
  this.rating,
  this.review,
  this.price
  });

 Room.fromJson(Map<String, dynamic> json)
   
      
    { 
      roomId = json['roomId'];
      roomNo = json['roomNo'];
      imageUrl = json['imageUrl'];
      description=json['description'];
      hasAC=json['hasAC'];
      rating=json[' rating'];
      review=json['description'];
     price=json['description'];

    }
Map<String, dynamic> toJson() {
    return {
      'roomId': roomId,
      'roomNo': roomNo,
     'description': description,
     'hasAC': hasAC,
    'rating':rating,
    'review': review,
    'price':price,
    };
  }
 
}

