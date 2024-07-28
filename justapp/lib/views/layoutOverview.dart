
import 'package:flutter/material.dart';
import 'package:justapp/backend/repository.dart';

class LayoutOverview extends StatelessWidget {
  const LayoutOverview({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Layouts"),
          actions: [
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LayoutOverview()))
              }, 
              child: const Text("Create")
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: Repository.layouts.length,
          itemBuilder: (context, index) {
            return TextButton(child: Text("layout"), onPressed: () => {},);
          } 
        ),
      );
  }
}