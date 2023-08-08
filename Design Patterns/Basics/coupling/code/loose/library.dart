import 'library_interface.dart';

class Library implements LibraryInterface {
  List<String> books = [];

  @override
  void addBook(String bookTitle) {
    books.add(bookTitle);
  }
}
