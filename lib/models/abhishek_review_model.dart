
class Review {
  String roomID;
  String roomName;
  String userID;
  String userName;
  String review;
  double rating; //in percentage

  Review(
      this.roomID,
      this.roomName,
      this.userID,
      this.userName,
      this.review,
      this.rating
      );
  Review.fromJson(Map<String, dynamic> json) {
    this.roomID = json['roomID'];
    this.roomName = json['roomName'];
    this.userID = json['userID'];
    this.userName = json['userName'];
    this.review = json['review'];
    this.rating = json['rating'];
  }

  Map<String, dynamic> toJson() =>
      {
        'roomID' : roomID,
        'roomName' : roomName,
        'userID' : userID,
        'userName' : userName,
        'review' : review,
        'rating' : rating

      };
}

