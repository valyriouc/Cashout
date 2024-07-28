import 'package:flutter/material.dart';
import 'package:justapp/models/item.dart';
import 'package:justapp/views/mainView.dart';

class LayoutView extends StatelessWidget {
  final Layout layout;

  const LayoutView({super.key, required this.layout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your layout"),
          actions: [
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainView()))
              }, 
              child: const Text("Home")
            )
          ],
        ),
        body: const Center(
          child: Text('This layout'),
        ),
      );
  }
}