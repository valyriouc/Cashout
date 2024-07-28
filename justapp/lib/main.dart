import 'package:flutter/material.dart';
import 'package:justapp/views/mainView.dart';

void main() {
  const MainApp app = MainApp();
  runApp(app);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainView()
    );
  }
}
