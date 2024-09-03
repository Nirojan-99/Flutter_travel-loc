import 'dart:core';

class Location{
  final String name;
  final String location;
  final String img;
  final String description;
  final List<String> keyFeatures;
  final List<String> questions;

  Location({
    required this.name,
    required this.location,
    required this.img,
    required this.description,
    required this.keyFeatures,
    required this.questions,
  });


}