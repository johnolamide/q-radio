import 'package:flutter/material.dart';
//import 'package:flutter_radio_player/flutter_radio_player.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_radio/flutter_radio.dart';
import 'dart:async';

//FlutterRadioPlayer _flutterRadioPlayer = FlutterRadioPlayer();

FlutterRadio _flutterRadio = FlutterRadio();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Online Radio URL
  String radioURL = "http://server-23.stream-server.nl:8438";

  bool isPlaying = false;
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    audioStart();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print("Audio Start OK.");
  }

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
        body: Container(
          color: Colors.blueGrey.shade900,
          child: Column(
            children: <Widget>[
              const Expanded(
                flex: 7,
                child: Icon(
                  Icons.radio,
                  size: 250,
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Align(
                    alignment: FractionalOffset.center,
                    child: IconButton(
                      icon: isPlaying
                          ? const Icon(
                              Icons.pause_circle_outline,
                              size: 80,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 80,
                            ),
                      onPressed: () {
                        setState(() {
                          FlutterRadio.play(url: radioURL);
                          isPlaying = !isPlaying;
                          isVisible = !isVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
