import 'package:q_radio/models/radio_station.dart';

class RadioStations {
  static List<RadioStation> allStations = [
    RadioStation(
        name: "BBC World Service News",
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
    RadioStation(
        name: "Radio Raving",
        streamURL: "http://109.169.46.197:8025/listen.pls",
        photoURL:
            "https://streamurl.link/logos/b2fc675020b0bf83a170833967fabd5cb694534cc36b053f83d3e981c0cb4f6f.png"),
    RadioStation(
        name: "The Diamond WICR",
        streamURL:
            "https://live.wostreaming.net/direct/univofindy-wicrhd1mp3-ibc4",
        photoURL:
            "https://streamurl.link/logos/04aae91cf64cde6363cbb603844264bd6b31eb7f8f7028487c2071cae91044f6.png"),
    RadioStation(
        name: "Ray Power FM",
        streamURL: "https://streamlive2.hearthis.at:8000/9065169.ogg",
        photoURL:
            "https://streamurl.link/logos/5307b014e53778491f2ae311063f27514f5b88d80eafcc5cae68d38ae72c1d58.png"),
    RadioStation(
        name: "Beat FM",
        streamURL: "https://stream.streamgenial.stream/pmaxwyx6sm0uv",
        photoURL:
            "https://streamurl.link/logos/d23bd0cb687190f37f4e1d58ecd463468e48d30b126153bf221ea121ae045ad7.png"),
  ];
}
