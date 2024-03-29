class Meal{
  int? id;
  String? data;
  String? name;
  String? imageUrl;
  String? time;
  int? ingCount;
  String? cost;
  int? bannerColor;

  Meal({
   this.id,
    this.data,
   this.name,
   this.imageUrl,
   this.bannerColor,
    this.cost,
    this.ingCount,
    this.time,

});
  static List<Meal> meals=[
    Meal(
      id: 1,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники.\n\n Не беда, если руки растут из нужного места, шашлык можно приготовить из того"
            "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
            "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Ovqat 0",
      imageUrl: 'assets/images/ovqat1.png',
      bannerColor:  0xffF2DFE1,
      cost: "12 000 so'm",
      ingCount: 5,
      time: "20 min",

    ),
    Meal(
      id: 2,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники."
          "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того"
          "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
          "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Ovqat 1",
      imageUrl: 'assets/images/ovqat2.png',
      bannerColor:  0xffDCC7B1,
      cost: "15 000 so'm",
      ingCount: 3,
      time: "17 min",

    ),
    Meal(
      id: 3,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники."
          "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того"
          "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
          "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Ovqat 2",
      imageUrl: 'assets/images/ovqat3.png',
      bannerColor:  0xffFFC5A8,
      cost: "10 000 so'm",
      ingCount: 6,
      time: "12 min",

    ),
    Meal(
      id: 4,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники."
          "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того"
          "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
          "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Ovqat 3",
      imageUrl: 'assets/images/ovqat4.png',
      bannerColor:  0xff71C3A1,
      cost: "14 000 so'm",
      ingCount: 3,
      time: "17 min",

    ),
    Meal(
      id: 5,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники."
          "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того"
          "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
          "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Ovqat 4",
      imageUrl: 'assets/images/ovqat5.png',
      bannerColor:  0xffA8B6FF,
      cost: "13 000 so'm",
      ingCount: 4,
      time: "15 min",

    ),
    Meal(
      id: 6,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники."
          "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того"
          "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
          "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Shashlik",
      imageUrl: 'assets/images/ovqat6.png',
      bannerColor:  0xffFFA8A8,
      cost: "15 000 so'm",
      ingCount: 3,
      time: "17 min",

    ),
    Meal(
      id: 7,
      data: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины."
          " Есть правда один минус. На базаре невозможно купить нормальную баранину,"
          " все скупают на корню шашлычники."
          "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того"
          "что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, "
          "где больше всего мяса, а те кусочки, которые остались после налета саранчи",
      name: "Somsa",
      imageUrl: 'assets/images/ovqat7.png',
      bannerColor:  0xffFFE7A8,
      cost: "10 000 so'm",
      ingCount: 3,
      time: "17 min",

    )
  ];
}