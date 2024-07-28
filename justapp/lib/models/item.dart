
abstract class Printer {
  void print(Printable item);
}

abstract class Printable {
  String toPrintOutput();
}

// Can be a singleton
// who needs the skill to print stuff 
class Order {
  final List<Item> items = <Item>[];
  
  void addItem(Item item) {
    items.add(item);
  }

  void printOrder(Printer printer) { 

  }

  void removeOrder(int id) {
    items.removeWhere((item) => item.id == id);
  }

  void resetOrder() {
    items.clear();  
  }
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

class Item implements Printable{
  int id;
  String name; 
  int price;
  ItemCategory category;

  Item({
    required this.id,
    required this.name, 
    required this.price,
    required this.category});
    
  @override
  String toPrintOutput() {
    // TODO: implement toPrintOutput
    throw UnimplementedError();
  }
}