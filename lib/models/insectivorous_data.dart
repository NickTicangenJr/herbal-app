class Insec {
  String imageUrl;
  String name;
  String sname;

  Insec({
    required this.imageUrl,
    required this.name,
    required this.sname,
  });
}

List<Insec> insecs = [
  Insec(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'fragrant',
    sname: 'Aloe barbadensis miller',
  ),
  Insec(
    imageUrl: 'assets/images/fragrant.jpg',
    name: 'fragrant',
    sname: 'Mimosa pudica Linn.',
  ),
];
