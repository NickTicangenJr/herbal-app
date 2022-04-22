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
        "Aloe vera, like a splash of oil, is a fantastic remedy for burns. It's also utilized as a wound healer, a hair grower, and a skin smoother. Take the pulp from the leaf and apply it on your skin. Apply the pulp to your scalp and face, as well. The leaf's decoction may also be used to treat wounds.",
    limitation:
        'Some individuals may suffer mild irritations or mild burning as the aloe vera works its way into their skin. It also causes skin allergies, so use it with caution.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/images/abukado.png',
    name: 'Abukado',
    usage:
        'Some of the oils in avocado are used to cure osteoarthritis. Dysentery and diarrhea are treated using the seeds, leaves, and bark. Psoriasis is a skin ailment that is treated with avocado oil and vitamin B12. The flesh of the fruit is applied to the skin to increase hair growth and hasten wound healing.',
    limitation:
        'When taken by mouth, avocado has a lot of calories because of its fat content. Avocado is POSSIBLY SAFE when applied to the skin for up to 3 months. It generally has few side effects, although one person who used a specific avocado oil plus vitamin B12 cream for psoriasis reported mild itching.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/alagaw.jpg',
    name: 'Alagaw',
    usage:
        'Decoction of roots, leaves, flowers, and fruits used as sudorific, pectoral, and carminative. Decoction of shoots used as parasiticide. Decoction of leaves used for bathing infants; also used as treatment for beriberi. Extract of leaves for cleaning wounds and for ticks and fleas.',
    limitation: 'Use with caution as it may cause skin allergies.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/amarillo.jpg',
    name: 'Amarillo',
    usage:
        'Flower are utilized in refreshing beverages. The leaves and essential oil are used to flavor food.',
    limitation: 'take moderately it cause severe effect.',
    warning:
        'Use with caution because the seeds are toxic and it cause severe effect.',
  ),
  Instruction(
    imageUrl: 'assets/images/ampalaya.jpg',
    name: 'Ampalaya',
    usage:
        'Ampalaya (Momordica charantia), often known as bitter melon or bitter gourd, is a kind of bitter gourd. Traditional applications in the Philippines include coughs, colds, asthma, as an emetic, especially in newborns, colic, stomach aches, diabetes, anemia, fever, malaria, ringworm, and wounds.',
    limitation:
        'Ampalaya fruit and young leaves are considered safe for consumption as found in food. Herbal medicine preparations should be taken as recommended for most adults. Taking Ampalaya in medicinal dosages may counter-act or aggravate its effectiveness. The key is moderation of use, just like any other herbal medicine. Pregnancy and Breast feeding. ',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/atis.jpg',
    name: 'Atis',
    usage:
        'You can eat the fruit ripe and makes a delicious ice cream. Salted bruised leaves used to hasten suppuration. Bark decoction is used as tonic and to stop diarrhea.',
    limitation:
        'Though atis has many medical and herbal properties, it is important to note that the seeds, as well as the leaves and bark, are poisonous.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/balanoy.jpg',
    name: 'Balanoy',
    usage:
        'As a tea, make an infusion or decoction of the plant (9-15 grams dry herb) or the tops.  Leaf juice can aid with mucous expectoration. Leaf decoction is also used to treat hiccups, nausea, and vomiting. Gas pains: Tea made from the decoction of the plant aids in the expulsion of wind from the bowels.',
    limitation:
        'It includes certain potentially dangerous compounds, including safrole, rutin, caffeic acid, tryptophan, and quercetin, despite its medical advantages.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/Balbaspusa.jpg',
    name: 'Balbas pusa',
    usage:
        'Balbas pusa (Cat whiskers) makes tea that is good for renal inflammation, kidney stones, and dysuria.',
    limitation:
        'Java tea or balbas pusa tea has no known and reported contra indications and side effects with other drugs. While it is generally safe to take java tea or balbas pusa tea, prolonged intake is discourage as this may cause low sodium serum in the body.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/balete.jpg',
    name: 'Balete',
    usage:
        'Balete chopped skin is an ideal treatment for skin eruptions and dermatitis. Use a cup of chopped skin in 1/2 gallon of water for 10 minutes; use the decoction to wash the affected skin twice a day. Its juice or broth can also be used to wash wounds.',
    limitation:
        'Balete tree known as effective treatment for wounds but it also causes allergies.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/balimbing.jpg',
    name: 'Balimbing',
    usage:
        'The fruit is eaten with or without salt; the juice used for seasoning. Decoction of leaves used for aphthous stomatitis and angina. Boiled flowers used to expel worms: 50 gms to a pint of boiling water; drunk in normal doses.',
    limitation:
        'Star fruit intoxication may be harmful and even life threatening in uremic patients. Because of its high potassium content, star fruit should be one of the food substances that should be excluded from the diet of patients with renal failure.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/bawang.jpg',
    name: 'Bawang',
    usage:
        'Bawang (garlic)used for hypertension. Also used as diuretic, and eaten fresh or burned for coughs in children. It is also good for Arthritis, rheumatism, toothaches you crush several cloves and rub on affected areas. Crush clove applied to both temples as poultice for headache.',
    limitation:
        'Garlic may decrease platelet aggregation and have antifibrinolytic activity; therefore, should be used with caution in patients on anticoagulant therapy.',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/bayabas.jpg',
    name: 'Bayabas',
    usage:
        'Bayabas is traditionally used as antiseptic and antiinflammatory for skin conditions such as skin burns, scalds, scrapes, sunburn, wounds, psoriasis, eczema and others.',
    limitation: 'There is no side effetcs',
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/buyo.jpg',
    name: 'Buyo',
    usage:
        "The Buyo crushed leaves are used as antiseptic for cuts and wounds. Leaves, together with lime and betel nut, constitute the Filipino's masticatory. Its use believed to help preserve the teeth and a prophylactic against stomach complaints. Leaves greased with lard or sesame oil, used by Filipinos as carminative; applied to the abdomen of children suffering from gastric disorders. Relieves gastrointestinal disorders. Juice of leaves used as stomachic.",
    limitation:
        "Contact Dermatitis: Betel quid assembly is commonly causing contact dermatitis, most of it is irritant caused by alkaline slaked lime (apog). Occasional cases are caused by the P. betle inflorescence.Betel Chewer's Cancer: Chronic users have been warned on observed cases of buccal cancer.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/cacao.jpg',
    name: 'Cacao',
    usage:
        "Oil or cocoa butter is an excellent emollient, used to soften and protect chapped hands and lips. It is also good for Eczema, dry skin: Roast 10-12 seeds and pound ; apply to affected areas as poultice after a warm compress.",
    limitation:
        "The caffeine in cocoa might block the effects of adenosine (Adenocard), a drug often used in cardiac stress testing. Advise is to abstain from cocoa or other caffeine containing products at least 24 hours before a cardiac stress test. Minor interactions may occur with antibiotics, birth control pills, cimetidine, disulfiram (Antabuse), fluconazole, mesiletine, verapamil.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/comfrey.jpg',
    name: 'Comfrey',
    usage:
        "Decoction of leaves used for a variety of illnesses: Asthma, cough, ulcers, constipation, hypertension. Poultice of fresh leaves used for sprains and fractures, inflammatory swelling, external wounds, sores, athlete's foot, burns, insect bites, and abscesses. Juice of leaves used for a variety of skin ailments and wounds healing; apply three times daily.",
    limitation:
        "Comfrey is LIKELY UNSAFE for anyone when taken by mouth. It contains chemicals (pyrrolizidine alkaloids, PAs) that can cause liver damage, lung damage, and cancer.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/dalandan.jpg',
    name: 'Dalandan',
    usage:
        "Juice is a cooling drink, and used as food, particularly for the febrile and scorbutic. the leaves, peel, and flowers are used as stomachic and antiscorbutic. For nausea and fainting, squeeze rind near nostril for irritant inhalation.",
    limitation:
        "Consume with caution if you have diabetes as it may affect your blood sugar level. Likewise, when taken together with caffeine, it may increase your blood pressure. If you are under a special diet or are taking medications, please talk to your physician as dalandan may have untoward side-effects and interactions.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/ganoderma.jpg',
    name: 'Ganomderma',
    usage:
        'It makes coffee called "Ganoderma Coffee." It is effective for those with diabetes and heart disease.',
    limitation:
        "Little is known about the safety of Ganoderma coffee. It may cause a number of side effects, including: Dizziness, Upset stomach, Skin irritation. Talk to your healthcare provider before trying Ganoderma coffee, especially if you take blood pressure, anticoagulant, antiplatelet, or cancer medications.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/gumamela.jpg',
    name: 'Gumamela',
    usage:
        'In the Philippines, flower buds, beaten to a paste, applied as poultice to boils, cancerous swellings, and mumps. Poultice of leaves and flower buds applied externally to swellings; the same mixture, with the addition of lime, hastens the maturation of tumors. Mumps, infection of the urinary tract: use dried drug materials 15 to 30 gms, boil to decoction and drink.',
    limitation: "Do not eat may cause stomach upset, gas, and constipation.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/ipilipil.jpg',
    name: 'Ipil-ipil',
    usage:
        'In the Philippines, the traditional healers in Zamboanga del Sur, use leaves for the treatment of parasitic worms. Roasted seeds used as emollient.',
    limitation:
        "It provides an excellent source of high-protein cattle fodder. However, the fodder contains mimosine, a toxic amino acid.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/kalatsusti.jpg',
    name: 'Kalatsutsi',
    usage:
        'Decoction of bark is used as purgative, emmenagogue, and febrifuge. Preventive for heat stroke: the material may be taken as a cooling tea.  Root-bark taken internally as a strong purgative. Root bark and fruit also used as abortifacient. Root bark used as remedy for gonorrhea and venereal sores.',
    limitation:
        "The milky sap can be a skin irritant, causing rashes or blistering. Ingestion of the sap or bark can cause vomiting and diarrhea.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/kamantigui.jpg',
    name: 'Kalatsutsi',
    usage:
        'In the Philippines, pounded leaves used as poultice to dissolve whitlow. Flowers used for snake bites, lumbago, and intercostal neuralgia. For contusion, painful inflammation, joint pains, carbuncles, dysmenorrhea, lumbago, and snake bites: use dried flowers, 3 to 6 gms or seed preparation, 3 to 7 gms or the entire plant, 9 to 15 gms, boil to decoction and drink.',
    limitation:
        "Because of high mineral content, concerns have been raised on regular ingestion of large quantities of the plant, especially those with gout, urolithiasis, and arthritis.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/kamias.jpg',
    name: 'Kamias',
    usage:
        'Skin diseases, especially with pruritus: Reduce the leaves to a paste and apply tolerably warm to areas of affected skin. Fruit juice used as eye drops. For Cough and thrush: Infusion of flowers, 40 grams to a pint of boiling water, 4 glasses of tea daily.',
    limitation:
        "If lots of bilimbi fruits are eaten at once or regularly, then owing to their acidic content, it results in indigestion, heartburn and other gastrointestinal problems.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/kampanilya.jpg',
    name: 'Kampanilya',
    usage:
        'Infusion of leaves in moderate doses is an excellent cathartic; in considerable doses, it is purgative and a violent emetic. Decoction of leaves in small doses used as antidote for poisoning. Extract of leaves used for colic and as laxative; in large doses causes diarrhea and vomiting.',
    limitation:
        "All parts of the plant are poisonous, especially the kernels of the fruit.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/karot.jpg',
    name: 'Karot',
    usage:
        'Raw carrots eaten as mechanical anthelmintic. Root made into marmalade used as refrigerant. Poultice of carrots also used for ulcers, carbuncles, infected wounds. Seeds of the plant when ground to powder and taken as tea for colic and to increase urine flow.',
    limitation:
        "Large amounts of carrot juice might cause the skin to yellow and the teeth to decay. Allergy to celery and related plants: Carrot may cause an allergic reaction in people who are allergic to birch, mugwort, spices, ivy, parsley, celery, and related plants.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/katakataka.jpg',
    name: 'Kata-kataka',
    usage:
        'Leaves used as astringent, antiseptic, and counter-irritant against poisonous insect bites. Pounded fresh material is applied as a poultice for a variety of conditions: Sprains, eczema, infections, burns, carbuncle and erysipelas. For asthma, leaves of leaves places in hot water for 15 minutes, then juice squeezed out of the leaves, and drunk.',
    limitation:
        "Excessive usage may result in intoxicating reactions. It may contain substances that could cause various allergic reactions. For pregnant and nursing mothers, use with extra caution. Always seek your doctor’s advice before using it.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/luyangdilaw.jpg',
    name: 'Luyang dilaw',
    usage:
        'Decoction of rhizome, as tea, used for fevers, dysentery, abdominal pain, flatulence, abdominal spasm, arthritis. In the Philippines, rhizomes with coconut oil used as stomachic and vulnerary.',
    limitation:
        "Mild side effects include upset stomach, acid reflux, diarrhea, dizziness and headaches.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/mangostine.jpg',
    name: 'Mangostine',
    usage:
        'Decoction of roots used for dysmenorrhea and genitourinary ailments. Decoction of leaves and bark used as febrifuge and to treat thrush and decoction of powdered rind used for external astringent application',
    limitation:
        "Taking mangostin might increase the risk of bleeding in people with bleeding disorders. Surgery: Mangosteen might slow blood clotting. Taking mangosteen might increase the risk of bleeding during or after surgery. Stop taking mangosteen 2 weeks before surgery.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/mais.jpg',
    name: 'Mais',
    usage:
        'For those who have Diuretic: Take decoction of hairs or cobs as tea. Decoction of pith of cob as tea is used for stomach complaints. The water in which unhusked corn is boiled is a pleasant tasting remedy for urinary tract infection. For Kidney stones: Infusion of corn hair in hot water, 3x daily.',
    limitation:
        "Often, corn gets contaminated by fungi that put off toxins called mycotoxins. If you eat a lot of corn with these toxins, you're at a higher risk for certain cancers, liver problems, lung issues, and slowing of your immune system.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/malunggay.jpg',
    name: 'Malunggay',
    usage:
        'Decoction of leaves used for hiccups, asthma, gout, back pain, rheumatism, wounds and sores. Young leaves, usually boiled, used to increase the flow of breast milk.',
    limitation:
        "Root bark contains 2 alkaloids, as well as the toxic hypotensive moringinine. The bark may cause violent uterine contractions that can be fatal. Chronic high-dose use may cause liver and kidney dysfunctions.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/makahiya.jpg',
    name: 'Makahiya',
    usage:
        'In the Philippines, roots used as diuretic; also used for dysentery and dysmenorrhea. Entire plant in decoction used as alterant and antiasthmatic.',
    limitation: "Causes skin irritations or inflammations.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/methi.jpg',
    name: 'Methi',
    usage:
        'Its seeds can be eaten to lower blood sugar. It can also help those with dysmenorrhea.',
    limitation:
        "Side effects may include diarrhea, stomach upset, bloating, and gas. It may also cause allergic reactions in some people.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/mint.jpg',
    name: 'Mint',
    usage:
        'In the Philippines, tops and leaves are considered carminative; when bruised used as antidote to stings of poisonous insects. Used for stomach weakness and diarrhea.. For toothaches: (1) Wet a small piece of cotton with juice expressed from crushed leaves; apply this impregnated cotton bud to the tooth. (2) Boil 6 tbsp. of leaves in two glasses of water for 15 minutes; strain and cool. Divide the decoction into 2 parts and take every 3 to 4 hours.',
    limitation:
        "Do not apply Yerba buena oil to infant's skin, it can cause life-threatening breathing problems. Yerba buena tea may be too strong to cause a burning sensation",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/nim.jpg',
    name: 'Neem tree',
    usage:
        'Decoction of leaves used for arthritis. Edible pulp of the fruit used for hemorrhoids, intestinal worms, wounds, diabetes, and leprosy. Flower used for controlling phlegm and treatment of intestinal worms. Used for scabies and many other skin diseases. Applied directly for treatment of head lice, wounds, skin ulcers.',
    limitation: "Use moderately it cause acute toxicity.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/niyogniyogan.jpg',
    name: 'Niyog-niyogan',
    usage:
        'Young shoots are edible. Leaf decoction used for the treatment of hypertension, diabetes, kidney stones, and high cholesterol.',
    limitation:
        "When taken more than the commended dosage such as fruit / nuts are eaten in consecutive days or when fresh nuts are eaten. This may result to overdose and may have the following adverse effects: hiccups, diarrhea, abdominal pain, distention, nausea and vomiting, unconsciousness.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/okra.jpg',
    name: 'Okra',
    usage:
        'Used as a food ingredient. It can be eaten raw or stewed. Decoction of young fruit useful for catarrh, urinary problems.',
    limitation:
        "Eating too much okra can adversely affect some people. Gastrointestinal problems: Okra contains fructans, which is a type of carbohydrate. Fructans can cause diarrhea, gas, cramping, and bloating in people with existing bowel problems. Kidney stones: Okra is high in oxalates.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/pandaki.jpg',
    name: 'Pandaki',
    usage:
        'Decoction of root and bark used for a variety of stomach and intestinal ailments. The white sap of the stem is applied to thorn injuries and to hasten the surfacing of the thorn fragment.',
    limitation:
        "Fruit reported to be highly poisonous, with its many seeds with red fleshy covering.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/pandan.jpg',
    name: 'Pandaki',
    usage:
        'Wound healing: Pulverized dried leaves used to facilitate wound healing. Roots used to strengthen the gums. Decoction of leaves used for Headache, arthritis, stomach spasms.',
    limitation:
        "People with kidney problems must not ingest pandan leaves regularly, as it causes nausea, indigestion and hampers renal health.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/rabanus.jpg',
    name: 'Rabanus',
    usage:
        'Used as a food ingridients. For diarrhea: boil the fresh leaves to concentrated decoction and drink. Juice of leaves increases the flow of urine and promotes bowel movements. For patients with edema, bloated belly (ascites), pale yellowish face, and oliguria: used dried root preparation with citrus rind preparation (5:1 proportion). Boil to a concentrated decoction and drink.',
    limitation:
        "Eating too much give upset stomach or throwing up, bad taste in your mouth.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/repolyo.jpg',
    name: 'Repolyo',
    usage:
        'Edible and prepared in many ways: stewed, steamed, sauteed, pickled, fermented, or eaten raw. Juice of red cabbage used for chronic coughs, bronchitis, asthma. Juice of white cabbage used to treat warts. Bruised leaves of the common white cabbage used for blisters. ',
    limitation:
        "High amounts may affect the thyroid · Certain nutrients can interact with medications · Juicing leaves much of the fiber.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/romero.jpg',
    name: 'Romero',
    usage:
        'Steam of strong decoction of herb inhaled for coughs. Vapor baths, using 30 to 40 gms of leaves in boiling, water, used for rheumatism, catarrh. Juice of leaves applied to areas of thinning hair and dandruff; also, as rosemary vinegar. For Hair wash: Steep 25 g of rosemary in 2 pints of cider vinegar for two weeks, shaking occasionally; strain. In hair washing, put 1-2 tsp in the final rinse. For dandruff, massage rosemary vinegar thoroughly into scalp, 20 mins before washing.',
    limitation: "It cause vomiting and dizziness when too much.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/sampalok.jpg',
    name: 'Sampalok',
    usage:
        'Sweetened and candied. The seeds, surrounded by a brownish pulp, tamarindo, are made into balls from which jams, sweets and drinks are made. The pulp, malasebo, is often eaten outright, with or without salt. The pulp is also an ingredient in Indian curries and chutnies. In the Philippines, the bark, leaves, flowers, fruits, and seeds are used medicinally in the way it is used in other countries. It also used as a treat in fever: Macerate pulp or ripe fruit in water, sweeten to taste, and drink.',
    limitation: "It causes stomach ache when eat too much.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/sili.jpg',
    name: 'Sili',
    usage:
        'Paste of the pepper is used a rubefacient. Infusion with cinnamon and sugar used for delirium tremens. Capsaicum, in equal parts with rhubarb and ginger, for gout and rheumatism.',
    limitation: "Eating too much cause Hemorrhoids.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/talong.jpg',
    name: 'Talong',
    usage:
        'Fruit is an excellent vegetable and popular in the rural day-to-day cuisine. It is eaten before it ripens, preferred before the seed hardens. Decoction of roots taken internally for asthma and as a general stimulant. Long fruit is phlegmatic and generative of phthisis, coughs, and anorexia.',
    limitation: "It causes allergy when eat too much.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/takipkuhol.jpg',
    name: 'Takip kuhol',
    usage:
        'In the Philippines, sap of leaves used as curative for sclerotic wounds. The sap of the leaves is used on wounds and skin sores. Also, on chaps, scratches and superficial burns. Leaves are toasted and given as infusion in bowel complaints and fevers of children. Also applied as anti-inflammatory to areas of blows and bruises.',
    limitation: "It causes liver problems.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/talumpunay.jpg',
    name: 'Talumpunay',
    usage:
        'Leaves used a lot in resolutive and mitigant poultices. Smoked like stramonium in cases of dyspnea produced by asthma. Seeds and roots have the same uses; some considered the seeds to be more potent. For Asthma: get dried leaves and stems, cut into small slices and mix with equal quantity of tobacco and roll into a cigarette and smoke 2 to 3 times a day. For Muscle pains and cramps due to rheumatism: get drug, boil and obtain a concentrated decoction. Wash the painful parts with the warm decoction. Severe cold accompanied by excessive sneezing similar to hay fever symptoms: use powdered seeds (0.1 gm) in pills or loose.',
    limitation:
        "drowsiness, disorientation, blurry vision, confusion, dry mouth, rash, trouble urinating, and hallucinations",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/tanglad.jpg',
    name: 'Tanglad',
    usage:
        'Commonly used as a stuffing ingredient in pig spit-roasting to improve the flavor and decrease the grease-taste. Used for cooking stale fish to improve the taste. For diarrhea, decoction of leaves with sugar and a small piece of crushed ginger taken orally. For adults, 1 cup, 3 times daily taken after each loose bowel movement. For infants and babies, 1 tablespoon 3 times daily and after each loose bowel movement; 2-6 years, 1/4 cup 3 times daily and after each loose bowel movement; 7-12 years, 1/2 cup three times daily and after each loose bowel movement. One of the 10 herbal ingredients in the decoction-bath used in the post-partum ritual of suob',
    limitation:
        "Causes toxic side effects, such as lung problems after inhaling lemongrass and a fatal poisoning after a child swallowed a lemongrass oil-based insect repellent.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/tawatawa.jpg',
    name: 'Tawa-tawa',
    usage:
        'In the Philippines, leaves are mixed with Datura metel leaves and flowers in the preparation of "asthma-cigarettes."  Effective medicine for dengue. Just stew it and drink the juice. Tincture is used as anthelmintic. Also used for ringworm.',
    limitation: "It might cause side effects such as nausea and vomiting.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
  Instruction(
    imageUrl: 'assets/herbs/tsaanggubat.jpg',
    name: 'Tsaang gubat',
    usage:
        'Leaf decoction or infusion for abdominal colic, cough, diarrhea and dysentery. For diarrhea: Boil 8 tbsp of chopped leaves in 2 glasses of water for 15 minutes; strain and cool. Use 1/4 of the decoction every 2 or 3 hours.',
    limitation: "Do not use while taking medications.",
    warning:
        'Before using herbal remedies, consult first your doctor. It can cause mild to moderate side effects including allergic reactions, rashes, asthma, headaches, nausea, vomiting, and diarrhea.',
  ),
];
