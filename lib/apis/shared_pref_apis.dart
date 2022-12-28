import 'package:q_radio/models/radio_station.dart';
import 'package:q_radio/utils/radio_stations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsApi {
  static const _key = 'radio_station';
  static Future<RadioStation> getInitialRadioStation() async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final stationName = sharedPrefs.getString(_key);

    if (stationName == null) return RadioStations.allStations[0];

    return RadioStations.allStations
        .firstWhere((element) => element.name == stationName);
  }
}
