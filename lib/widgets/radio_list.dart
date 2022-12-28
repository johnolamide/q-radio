import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q_radio/apis/shared_pref_apis.dart';
import 'package:q_radio/models/radio_station.dart';
import 'package:q_radio/providers/radio_provider.dart';
import 'package:q_radio/utils/radio_stations.dart';

import '../apis/radio_api.dart';

class RadioList extends StatefulWidget {
  const RadioList({super.key});

  @override
  State<RadioList> createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  late RadioStation selectedStation;
  late RadioProvider provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<RadioProvider>(context, listen: false);
    selectedStation = provider.station;
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RadioProvider>(context, listen: false);
    return ListView.builder(
      itemCount: RadioStations.allStations.length,
      itemBuilder: ((context, index) {
        final station = RadioStations.allStations[index];
        bool isSelected = station.name == provider.station.name;
        return Container(
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(colors: [Colors.pink, Colors.deepPurple])
                : null,
          ),
          child: ListTile(
            leading: Image.network(
              station.photoURL,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            horizontalTitleGap: 50,
            title: Text(
              station.name,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            onTap: () async {
              provider.setRadioStation(station);
              SharedPrefsApi.setStation(station);
              await RadioApi.changeStation(station);
              setState(() {
                selectedStation = station;
              });
            },
          ),
        );
      }),
    );
  }
}
