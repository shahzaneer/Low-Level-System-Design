import 'library.dart';

class Book {
  final String title;

  Book(this.title);

  void addToLibrary(Library library) {
    library.addBook(title);
  }
}
