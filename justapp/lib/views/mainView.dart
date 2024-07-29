import 'package:flutter/material.dart';
import 'package:justapp/backend/repository.dart';
import 'package:justapp/models/item.dart';
import 'package:justapp/views/layoutOverview.dart';

class MainView extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();
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
                  MaterialPageRoute(builder: (context) => const LayoutOverview())
                );
              }, 
              child: const Text("Layouts")
            ),
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
                return ListTile(
                  title: TextButton(
                    child: Text(Repository.getActive()?.items[index].name ?? "test"), 
                    onPressed: () {
                      double amount = double.parse(_controller.text.replaceFirst("€", ""));
                      Item? item = Repository.getActive()?.items[index];
                      if (item == null) {
                        return;
                      }
                      selectedItems.add(item);
                      amount += item.price / 100;
                      _controller.text = "$amount€";
                    }),
                );
              },
            ),
          ),
        ],
      ),
      );
  }
}
