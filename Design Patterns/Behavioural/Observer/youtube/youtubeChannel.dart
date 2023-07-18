import 'observer.dart';
import 'subject.dart';

class YoutubeChannel extends Subject {
  List<Observer> subscribers = [];

  // this function will notify all the subsribers
  @override
  void notifyChanges() {
    for (Observer subscriber in subscribers) {
      subscriber.notified();
    }
  }

  @override
  void subscribe(Observer observer) {
    subscribers.add(observer);
  }

  @override
  void unsubscribe(Observer observer) {
    subscribers.remove(observer);
  }
}
