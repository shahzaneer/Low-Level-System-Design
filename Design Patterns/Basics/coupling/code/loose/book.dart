import 'library_interface.dart';

class Book {
  final String title;

  Book(this.title);

  void addToLibrary(LibraryInterface library) {
    library.addBook(title);
  }
}
