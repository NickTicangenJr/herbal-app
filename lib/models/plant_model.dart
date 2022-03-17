// import 'package:flutter_travel_ui/models/activity_model.dart';

import 'activity_model.dart';

class Destination {
  String imageUrl;
  String name;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.activities,
  });
}

// This is the data about activity ==== This is the data about activity ====
List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/aloe_vera.jpg',
    name: 'Nick',
    sname: 'Sightseeing Tour',
  ),
  Activity(
    imageUrl: 'assets/images/aloe_vera.jpg',
    name: 'Nick',
    sname: 'Sightseeing Tour',
  ),
];
// This is the data about activity ==== This is the data about activity ====

// This is the data about plant ==== This is the data about plant ====
List<Destination> plants = [
  Destination(
    imageUrl: 'assets/images/fruit.jpg',
    name: 'Herbal',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/vagetable.jpg',
    name: 'Fragrant',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/cerbera.jpg',
    name: 'Poisonus',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/poison_ivy.jpg',
    name: 'Insectivorous',
    description: 'Fruits should be an important element of your everyday diet.',
    activities: activities,
  ),
];
