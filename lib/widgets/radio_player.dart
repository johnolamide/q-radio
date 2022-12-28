import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:q_radio/widgets/radio_list.dart';

class RadioPlayer extends StatefulWidget {
  const RadioPlayer({super.key});

  @override
  State<RadioPlayer> createState() => _RadioPlayerState();
}

class _RadioPlayerState extends State<RadioPlayer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,
                      icon: const Icon(Icons.list)),
                  IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,
                      icon: const Icon(Icons.play_arrow)),
                  IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,
                      icon: const Icon(Icons.volume_up)),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            // borderRadius: BorderRadius.vertical(top: Radius.elliptical(250, 50)),
          ),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Radio List",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 30,
                endIndent: 30,
              ),
              Expanded(
                child: RadioList(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
