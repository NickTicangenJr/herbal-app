class Instruction {
  String imageUrl;
  String name;
  String usage;
  String limitation;
  String warning;

  Instruction({
    required this.imageUrl,
    required this.name,
    required this.usage,
    required this.limitation,
    required this.warning,
  });
}

// This is the data about activity ==== This is the data about activity ====
List<Instruction> instructions = [
  Instruction(
    imageUrl: 'assets/images/aloe_vera.jpg',
    name: 'Aloe vera',
    usage:
        'Mainam na gamut sa mga paso (burns) na gaya ng tilamsik ng mantika; ginagamit bilang pampalago ng buhok, pampakinis ng kutis, gamot sa sugat. Kunin ang katas ng dahon at ipahid sa balat na natilamsikan ng mantika; gamitin din ang katas para ikuskos sa anit at mukha. Maaari ring gamitin ang katas ng dahon bilang gamut sa sugat.',
    limitation:
        'As the aloe vera works its way into your skin, some individuals may suffer irritation or mild burning. However, if you develop a rash or hives, you may be allergic to the gel and should discontinue use immediately.',
    warning: 'Disclaimer message hgere',
  ),
  Instruction(
    imageUrl: 'assets/images/bayabas.jpg',
    name: 'Bayabas',
    usage:
        'Ginagamit na panlanggas ng sugat, pampaligo ng mga bagong panganak; tsaa para sa mga nagtatae. Ipanlanggas ang maligamgam o pinalamig na tubig sa sugat, galis, bakokang, minsan o dalawang beses maghapon. Ilaga o pakuluan ang dahon. Gamitin ang pinagpakuluang tubig.',
    limitation: 'Do not eat or drink',
    warning: 'Disclaimer message hgere',
  ),
  Instruction(
    imageUrl: 'assets/images/bayabas.jpg',
    name: 'Bayabas',
    usage:
        'Ginagamit na panlanggas ng sugat, pampaligo ng mga bagong panganak; tsaa para sa mga nagtatae. Ipanlanggas ang maligamgam o pinalamig na tubig sa sugat, galis, bakokang, minsan o dalawang beses maghapon. Ilaga o pakuluan ang dahon. Gamitin ang pinagpakuluang tubig.',
    limitation: 'Do not eat or drink',
    warning: 'Disclaimer message hgere',
  ),
];
