import 'book.dart';
import 'library.dart';

void main() {
  final library = Library();
  final book = Book("Introduction to Programming");

  book.addToLibrary(library);

  print("Books in Library: ${library.books}");
}


// In this example, the Book class interacts with the LibraryInterface
// instead of the concrete Library class. 
//This promotes loose coupling because the Book class is not tightly bound 
//to the specific implementation of Library.
// If you were to change the Library class,
// the Book class would still work as long as
// it adheres to the LibraryInterface.

//! In summary:

//* Tight Coupling: 
//? Direct dependencies between classes, where changes in one class can
//? impact another class directly.
//* Loose Coupling: 
//? Abstraction and interfaces are used to interact between classes,
//? reducing direct dependencies and allowing 
//? for more flexibility and modifiability.