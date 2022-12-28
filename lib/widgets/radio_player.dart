import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q_radio/providers/radio_provider.dart';
import 'package:q_radio/widgets/radio_list.dart';

class RadioPlayer extends StatefulWidget {
  const RadioPlayer({super.key});

  @override
  State<RadioPlayer> createState() => _RadioPlayerState();
}

class _RadioPlayerState extends State<RadioPlayer>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> radioOffset;
  late Animation<Offset> radioListOffset;

  bool listEnabled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    radioListOffset =
        Tween(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );

    radioOffset = Tween(begin: const Offset(0, 0.3), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SlideTransition(
            position: radioOffset,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                  child: Consumer<RadioProvider>(
                      builder: ((context, value, child) {
                    return Image.network(
                      value.station.photoURL,
                      fit: BoxFit.cover,
                    );
                  })),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            listEnabled = !listEnabled;
                          });
                          switch (animationController.status) {
                            case AnimationStatus.dismissed:
                              animationController.forward();
                              break;
                            case AnimationStatus.completed:
                              animationController.reverse();
                              break;
                            default:
                          }
                        },
                        color: listEnabled ? Colors.amber : Colors.white,
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
        ),
        SlideTransition(
          position: radioListOffset,
          child: Container(
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
          ),
        )
      ],
    );
  }
}
