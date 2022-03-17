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
    name: 'Aloe vera',
    sname: 'Aloe barbadensis miller',
  ),
  Activity(
    imageUrl: 'assets/images/makahiya.jpg',
    name: 'Sensitive plant',
    sname: 'Mimosa pudica Linn.',
  ),
  Activity(
    imageUrl: 'assets/images/malunggay.jpg',
    name: 'Moringa',
    sname: 'Moringa oleifera.',
  ),
  Activity(
    imageUrl: 'assets/images/ampalaya.jpg',
    name: 'Bitter gourd',
    sname: 'Momordica charantia.',
  ),
  Activity(
    imageUrl: 'assets/images/sili.jpg',
    name: 'Capsicum',
    sname: 'Capsicum fructescens.',
  ),
  Activity(
    imageUrl: 'assets/images/bayabas.jpg',
    name: 'Guava',
    sname: 'Psidium guajava.',
  ),
  Activity(
    imageUrl: 'assets/images/tsaa.jpg',
    name: 'Fukien tea tree',
    sname: 'Carmona retusa.',
  ),
  Activity(
    imageUrl: 'assets/images/tawa.jpg',
    name: 'Asthma-plant',
    sname: 'Euphorbia hirta.',
  ),
  Activity(
    imageUrl: 'assets/images/luya.jpg',
    name: 'Ginger',
    sname: 'Zingiber officinale.',
  ),
  Activity(
    imageUrl: 'assets/images/lagundi.jpg',
    name: 'Chinese chastetree',
    sname: 'Vitex negundo.',
  ),
  Activity(
    imageUrl: 'assets/images/kata.jpg',
    name: 'Kalanchoe pinnata',
    sname: 'Bryophyllum pinnatum.',
  ),
  Activity(
    imageUrl: 'assets/images/bawang.jpg',
    name: 'Garlic',
    sname: 'Allium sativum.',
  ),
  Activity(
    imageUrl: 'assets/images/pusa.jpg',
    name: 'Cat whisker',
    sname: 'Orthosiphon aristatus.',
  ),
  Activity(
    imageUrl: 'assets/images/gumamela.jpg',
    name: 'Gumamela',
    sname: 'Hibiscus.',
  ),
  Activity(
    imageUrl: 'assets/images/oregano.jpg',
    name: 'Oregano',
    sname: 'Origanum vulgare.',
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
