class Fragrant {
  String imageUrl;
  String name;
  String sname;

  Fragrant({
    required this.imageUrl,
    required this.name,
    required this.sname,
  });
}

List<Fragrant> fragrants = [
  Fragrant(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'fragrant',
    sname: 'Aloe barbadensis miller',
  ),
  Fragrant(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'fragrant',
    sname: 'Mimosa pudica Linn.',
  ),
];
