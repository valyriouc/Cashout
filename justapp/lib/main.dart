import 'package:flutter/material.dart';
import 'package:justapp/backend/repository.dart';
import 'package:justapp/views/mainView.dart';

void main() {
  Repository.init();
  const MainApp app = MainApp();
  runApp(app);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainView()
    );
  }
}