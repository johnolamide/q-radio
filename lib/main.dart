import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Q-Radio",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Q-Radio"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            print("Radio Pressed");
          }),
          child: const Icon(Icons.radio_rounded),
        ),
      ),
    );
  }
}
