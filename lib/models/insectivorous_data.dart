class Insec {
  String imageUrl;
  String name;
  String scientific;
  String description;

  Insec({
    required this.imageUrl,
    required this.name,
    required this.scientific,
    required this.description,
  });
}

List<Insec> insecs = [
  Insec(
    imageUrl: 'assets/insecs/Nepenthes_hamiguitanensis.jpg',
    name: 'Nepenthes hamiguitanensis',
    scientific: '',
    description:
        "Nepenthes hamiguitanensis is a tropical pitcher plant that grows at heights of 1200–1600 meters above sea level on the Philippine island of Mindanao.",
  ),
  Insec(
    imageUrl: 'assets/insecs/Nepenthes_peltata.jpeg',
    name: 'Nepenthes peltate',
    scientific: '',
    description:
        "Nepenthes peltata is a tropical pitcher plant found only on the upper slopes of Mount Hamiguitan on the Philippine island of Mindanao. It has a peltate tendril attachment and a prominent indumentum. Ovoid pitchers with a pronounced basal crest and numerous nectar glands on the bottom side of the lid are typical of this species.",
  ),
  Insec(
    imageUrl: 'assets/insecs/Nepenthes_micramphora.jpeg',
    name: 'Nepenthes micromphora',
    scientific: '',
    description:
        "Nepenthes micramphora is a tropical pitcher plant found exclusively on the Philippine island of Mindanao's Mount Hamiguitan. It's a highland plant that grows between 1100 and 1635 meters above sea level.",
  ),
  Insec(
    imageUrl: 'assets/insecs/Justinae.jpg',
    name: 'Nepenthes justinae',
    scientific: '',
    description:
        "Nepenthes justinae is a tropical pitcher plant found exclusively on the Philippine island of Mindanao's Mount Hamiguitan, where it grows at heights of 1000 - 1620 meters above sea level.",
  ),
  Insec(
    imageUrl: 'assets/insecs/Nalfredoi_LP.jpg',
    name: 'Nepenthes alfredoi',
    scientific: '',
    description:
        "Nepenthes alfredoi is a tropical pitcher plant found only in the Philippines, where it grows at heights of 160 - 345 meters above sea level in the Mt. Hamiguitan Range on the island of Mindanao.",
  ),
];
