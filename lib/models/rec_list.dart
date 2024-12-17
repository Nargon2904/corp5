class Listing {
  final int id;
  final String title;
  final int price;
  final String description;
  final String publishDate;
  final List<String> img;
  bool isfavor;

  Listing(this.id, this.title, this.price, this.description, this.publishDate, this.img, this.isfavor);
}

List<Listing> listings = [
  Listing(
    1,
    "Деревянные киты - Всё, что я хочу тебе сказать (Black)",
    2900,
    "Формат: 12' \nLP Жанр: shoegaze, dream pop \nSide A:\n1 Всё, что я хочу тебе сказать\n2 Никогда\n3 Утро солнечного дня\nSide B:\n1 Перестаю дышать\n2 Потерялась\n3 Японская\n4 Котёнок",
    "2024-05-27",
    ["kits"],
    false
  ),
  Listing(
    2,
    "Петар Мартич - Петар",
    4000,
    "Формат: 12' \nLP Жанр: rap \nSide A:\n 1 Всё, что я хочу тебе сказать\n2 Никогда\n3 Утро солнечного дня\nSide B:\n1 Перестаю дышать\n2 Потерялась\n3 Японская\n4 Котёнок",
    "2022-01-27",
    ["petar"],
    false
  ),
  Listing(
    3,
    "4 Позиции Бруно - Весёлые старты (GREEN)",
    4500,
    "Формат: 10' \nLP Жанр: electronic, ambient \nSide A:\n1 Всё, что я хочу тебе сказать\n2 Никогда\n3 Утро солнечного дня\nSide B:\n1 Перестаю дышать\n2 Потерялась\n3 Японская\n4 Котёнок",
    "2024-05-27",
    ["bruno"],
    false
  ),
];

List<Listing> favorListings = [];