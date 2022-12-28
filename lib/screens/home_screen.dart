import 'package:flutter/material.dart';
import 'package:q_radio/widgets/gradient_background.dart';
import 'package:q_radio/widgets/radio_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(child: RadioPlayer()),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => print("pressed")),
        child: const Icon(Icons.radio_rounded),
      ),
    );
  }
}
