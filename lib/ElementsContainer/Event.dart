import 'dart:convert';

class Event {
  final String name;
  final String picture;
  final String rating;
  final String musicGender;
  final String distance;
  final String arriveEstimate;
  final String costAverage;

  Event({
    this.name,
    this.picture,
    this.rating,
    this.musicGender,
    this.distance,
    this.costAverage,
    this.arriveEstimate,
  });

  factory Event.fromJson(jsonData) {
    return Event(
      name: jsonData['name'],
      picture: jsonData['picture'],
      rating: jsonData['rating'],
      musicGender: jsonData['musicGender'],
      distance: jsonData['distance'],
      arriveEstimate: jsonData['arriveEstimate'],
      costAverage: jsonData['costAverage'],
    );
  }

  toJson() {
    return jsonEncode({
      'name': name,
      'picture': picture,
      'rating': rating,
      'musicGender': musicGender,
      'distance': distance,
      'arriveEstimate': arriveEstimate,
      'costAverage': costAverage
    });
  }
}
