
import 'package:justapp/models/item.dart';

class Repository {

  static final List<Layout> layouts = <Layout>[];
  
  static final List<Order> orders = <Order>[];

  static Layout? getActive() {
    // return layouts.firstWhere((layout) => layout.isActive);
    Layout layout = Layout(id:1, name:"Day1");
    layout.items.addAll(<Item>[
      Item(id: 1, name: "Rote Wurst", category: ItemCategory.food, price: 200),
      Item(id: 2, name: "Cola", category: ItemCategory.drinkWithoutAlcohol, price: 200),
    ]);
    return layout;
  }
}