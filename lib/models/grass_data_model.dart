class Grass {
  String imageUrl;
  String name;
  String sname;

  Grass({
    required this.imageUrl,
    required this.name,
    required this.sname,
  });
}

List<Grass> grasses = [
  Grass(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'fragrant',
    sname: 'Aloe barbadensis miller',
  ),
  Grass(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'fragrant',
    sname: 'Mimosa pudica Linn.',
  ),
];
