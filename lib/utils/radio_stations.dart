import 'package:q_radio/models/radio_station.dart';

class RadioStations {
  static List<RadioStation> allStations = [
    RadioStation(
        name: "BBC World Servie News",
        streamURL:
            "http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_world_service.pls",
        photoURL:
            "https://streamurl.link/logos/f8bc4dbf1f1dedb9d8cad91773d18fd7af48e699ebc78d6e9b21ac1584d7d44b.png"),
    RadioStation(
        name: "BBC Radio 1",
        streamURL:
            "http://open.live.bbc.co.uk/mediaselector/5/select/version/2.0/mediaset/http-icy-mp3-a/vpid/bbc_radio_one/format/pls.pls",
        photoURL:
            "https://streamurl.link/logos/8ba5db16b841b04ee70aa660e3b18b1857b63351091345a66b6dd97a2f2da27f.png"),
    RadioStation(
        name: "Rave FM",
        streamURL: "http://stream.zenolive.com/0fxekubhg6quv",
        photoURL:
            "https://streamurl.link/logos/f5f7dfe9bffc457a599ef14f4e261d75117a7d049051a327d37e831f3ac01bbf.png"),
  ];
}
