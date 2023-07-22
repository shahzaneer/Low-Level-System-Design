import 'iterator.dart';

class MyIterator<T> implements IteratorRaw<T> {
  List<T> list;
  int length;
  int position = 0;

  MyIterator({required this.list, required this.length});

  @override
  bool hasNext() {
    return position < length;
  }

  bool hasPrevious() {
    return position > 0;
  }

  @override
  T next() {
    T object = list.elementAt(position);
    position++;
    return object;
  }

  @override
  T previous() {
    T object = list.elementAt(position);
    position--;
    return object;
  }
}
