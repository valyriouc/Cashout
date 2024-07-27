
class Order {
  final List<Item> items = <Item>[];

}

class Layout {
  final List<Item> items = <Item>[];

  void addItem(Item item) {
    items.add(item);
  }

  void tryEditItem(Item item) {
    int id = item.id;
    Item found = items.firstWhere((elem)=> elem.id == id);
    found.name = item.name;
    found.price = item.price;
    found.category = item.category;
  } 

  void removeItem(Item item) {
    items.removeWhere((element) => element.id == item.id);
  }
}

enum ItemCategory {
  drinkWithAlcohol,
  drinkWithoutAlcohol,
  dood,
  deposit 
}

class Item {
  int id;
  String name; 
  int price;
  ItemCategory category;

  Item({
    required this.id,
    required this.name, 
    required this.price,
    required this.category});
}

