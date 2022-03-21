// import 'package:flutter_travel_ui/models/activity_model.dart';

import 'package:bottom_nav_ui/models/fragrant_data_model.dart';

import 'herb_data_model.dart';

class Destination {
  String imageUrl;
  String name;
  String description;
  List<Activity> activities;
  List<Fragrant> fragrants;

  Destination({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.activities,
    required this.fragrants,
  });
}

// This is the data about plant ==== This is the data about plant ===
List<Destination> plants = [
  Destination(
    imageUrl: 'assets/images/herb.jpg',
    name: 'Herbal',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
    fragrants: fragrants,
  ),
  Destination(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'Fragrant',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
    fragrants: fragrants,
  ),
  Destination(
    imageUrl: 'assets/images/cerbera.jpg',
    name: 'Poisonus',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
    fragrants: fragrants,
  ),
  Destination(
    imageUrl: 'assets/images/tropical_pitcher.jpg',
    name: 'Insectivorous',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
    fragrants: fragrants,
  ),
];
