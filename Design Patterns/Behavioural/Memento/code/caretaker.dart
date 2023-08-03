import 'memento.dart';

class CareTaker {
  List<Memento> mementoList = [];

  void add(Memento memento_state) {
    mementoList.add(memento_state);
  }

  Memento get(int index) {
    return mementoList.elementAt(index);
  }
}
