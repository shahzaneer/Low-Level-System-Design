import 'book.dart';
import 'library.dart';

void main() {
  final library = Library();
  final book = Book("Introduction to Programming");

  book.addToLibrary(library);

  print("Books in Library: ${library.books}");
}

//! In this example, the Book class tightly depends on the Library class.
//!  The addToLibrary method directly interacts with the 
//!  Library class,and any changes
//!  to the Library class could impact the Book class's functionality.