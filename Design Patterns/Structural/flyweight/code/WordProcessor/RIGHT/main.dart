import 'i_letter.dart';

void main(List<String> args) {
  DocumentLetter a = new DocumentLetter(font: "Arial", size: 10, letter: "a");
  DocumentLetter a2 = new DocumentLetter(font: "Arial", size: 10, letter: "a");
  DocumentLetter a3 = new DocumentLetter(font: "Arial", size: 10, letter: "a");
  DocumentLetter a4 = new DocumentLetter(font: "Arial", size: 10, letter: "a");

  a.displayPosition(row: 0, column: 1);
  a2.displayPosition(row: 0, column: 2);
  a3.displayPosition(row: 0, column: 3);
  a4.displayPosition(row: 0, column: 4);
  // only a will be created by constructor call others
  //will share the object using this flyweight object
}
