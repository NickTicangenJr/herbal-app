class Say {
  String imageUrl;
  String name;
  String sname;

  Say({
    required this.imageUrl,
    required this.name,
    required this.sname,
  });
}

List<Say> sayings = [
  Say(
    imageUrl: 'assets/images/aloe_vera.jpg',
    name: 'Anti inflamatory',
    sname: 'Aloe Vera',
  ),
  Say(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'Mind your own business',
    sname: 'Nick',
  ),
];
