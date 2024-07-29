import 'package:flutter/material.dart';
import 'package:justapp/models/item.dart';
import 'package:justapp/views/mainView.dart';

class OrderOverview extends StatelessWidget {
  final Order order;

  const OrderOverview({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your order"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainView()));
              },
              child: const Text("Layouts")),
        ],
      ),
      body: ListView.builder(
        itemCount: order.items.length,
        itemBuilder: (context, index) {
          Item item = order.items[index];
          return Row(
            children: [
              Text(item.name),
              Text((item.price / 100).toString())
            ],
          );
        }
      )
    );
  }
}