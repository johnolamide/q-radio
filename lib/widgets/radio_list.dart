import 'package:flutter/material.dart';
import 'package:q_radio/utils/radio_stations.dart';

class RadioList extends StatelessWidget {
  const RadioList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: RadioStations.allStations.length,
      itemBuilder: ((context, index) {
        final station = RadioStations.allStations[index];
        return ListTile(
          leading: Image.network(
            station.photoURL,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}
