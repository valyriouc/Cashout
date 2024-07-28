import 'package:flutter/material.dart';
import 'package:justapp/backend/repository.dart';
import 'package:justapp/views/layoutOverview.dart';

class MainView extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();

  MainView({super.key});

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
              decoration: const InputDecoration(
                labelText: 'Enter item',
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
                    onPressed: () => {},),
                );
              },
            ),
          ),
        ],
      ),
      );
  }
}
