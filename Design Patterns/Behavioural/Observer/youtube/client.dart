import 'subsriber.dart';
import 'youtubeChannel.dart';

void main(List<String> args) {
  YoutubeChannel yt = new YoutubeChannel();
  Subscriber shahzaneer = new Subscriber(name: "Shahzaneer");
  Subscriber noor = new Subscriber(name: "Noor");

  yt.subscribe(shahzaneer);
  yt.subscribe(noor);

  yt.notifyChanges();
}
