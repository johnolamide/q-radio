import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:q_radio/apis/shared_pref_apis.dart';
import 'package:q_radio/models/radio_station.dart';
import 'package:q_radio/providers/radio_provider.dart';
import 'package:q_radio/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final radioStation = await SharedPrefsApi.getInitialRadioStation();
  WidgetsFlutterBinding.ensureInitialized();

  ByteData data =
      await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  SecurityContext.defaultContext
      .setTrustedCertificatesBytes(data.buffer.asUint8List());
  runApp(MainApp(
    initialStation: radioStation,
  ));
}

class MainApp extends StatelessWidget {
  final RadioStation initialStation;
  const MainApp({required this.initialStation, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: ((context) => RadioProvider(initialStation))),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: "Q-Radio",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
