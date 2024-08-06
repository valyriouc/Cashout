
import 'package:flutter/material.dart';
import 'package:justapp/backend/repository.dart';
import 'package:justapp/views/createLayoutView.dart';
import 'package:justapp/views/mainView.dart';

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
                    builder: (context) => MainView()))
              }, 
              child: const Text("Home")
            ),
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CreateLayoutView()))
              }, 
              child: const Text("Create")
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: Repository.layouts.length,
          itemBuilder: (context, index) {
            Row row = Row(
              children: [
                Column(children: [TextButton(onPressed: () => {}, child: Text(Repository.layouts[index].name))],),
              ],
            );
            index += 1;
            return row;
          })
    );
  }
}