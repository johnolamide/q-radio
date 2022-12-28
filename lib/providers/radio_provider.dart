import 'package:flutter/cupertino.dart';
import 'package:q_radio/models/radio_station.dart';

class RadioProvider with ChangeNotifier {
  final RadioStation initialRadioStation;

  RadioProvider(this.initialRadioStation);

  RadioStation? _station;
  RadioStation get station => _station ?? initialRadioStation;

  void setRadioStation(RadioStation station) {
    _station = station;
    notifyListeners();
  }
}
