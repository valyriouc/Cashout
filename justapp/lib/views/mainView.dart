import 'package:flutter/material.dart';
import 'package:justapp/backend/repository.dart';
import 'package:justapp/models/item.dart';
import 'package:justapp/views/layoutOverview.dart';
import 'package:justapp/views/orderOverview.dart';

class MainView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final List<Item> selectedItems = <Item>[];

  MainView({super.key}) {
    _controller.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cashout"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LayoutOverview()));
              },
              child: const Text("Layouts")),
          TextButton(
            child: const Text("View order"), 
            onPressed: () {
              _showCurrentOrder(context);
            })
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Repository.getActive()?.items.length,
              itemBuilder: (context, index) {
                Item? item = Repository.getActive()?.items[index];
                if (item == null) {
                  return null;
                }
                return ListTile(
                  title: TextButton(
                      child: Text(item.name),
                      onPressed: () {
                        _handleItemClick(item);
                      }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _handleItemClick(Item item) {
    double amount = double.parse(_controller.text.replaceFirst("€", ""));
    selectedItems.add(item);
    amount += item.price / 100;
    _controller.text = "$amount€";
  }

  void _showCurrentOrder(context) {
    Order order = Order();
    order.items.addAll(selectedItems);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => OrderOverview(order: order)));
  }
}
