
import 'package:justapp/models/item.dart';

class Repository {

  static final List<Layout> layouts = <Layout>[];
  
  static final List<Order> orders = <Order>[
    
  ];

  static _buildCurrent() {
    Layout layout = Layout(id:1, name:"Day1");
    layout.items.addAll(<Item>[
      Item(id: 1, name: "Rote Wurst", category: ItemCategory.food, price: 200),
      Item(id: 2, name: "Cola", category: ItemCategory.drinkWithoutAlcohol, price: 200),
    ]);
    layout.isActive = true;
    layouts.add(layout);
  }

  static _buildOthers() {
    Layout layout1 = Layout(id: 2, name: "Day2");
    Layout layout2 = Layout(id: 2, name: "Day3");
    layouts.add(layout1);
    layouts.add(layout2);
  }

  static init() {
    _buildCurrent();
    _buildOthers();
  }

  static Layout? getActive() {
    return layouts.firstWhere((layout) => layout.isActive);
  }
}