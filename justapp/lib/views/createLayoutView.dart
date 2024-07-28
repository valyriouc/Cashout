import 'package:flutter/material.dart';
import 'package:justapp/views/layoutOverview.dart';

class CreateLayoutView extends StatelessWidget {
  const CreateLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create your layout"),
          actions: [
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LayoutOverview()))
              }, 
              child: const Text("Save")
            ),
          ],
        ),
        body: 
      );
  }
  
}