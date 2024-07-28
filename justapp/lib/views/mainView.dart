import 'package:flutter/material.dart';
import 'package:justapp/views/layoutOverview.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

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
        body: Center(child: Text("Main view")),
      );
  }
}
