class DocumentLetter {
  String font;
  int size;
  int row;
  int column;
  String letter;

  DocumentLetter({
    required this.font,
    required this.size,
    required this.row,
    required this.column,
    required this.letter,
  });
}

void main(List<String> args) {
  // For Example I need to write "I am Shahzaneer Ahmed from GCU Lahore"
  DocumentLetter I = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "I");
  DocumentLetter sp1 = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: " ");
  DocumentLetter a = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "a");
  DocumentLetter m = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "m");
  DocumentLetter sp2 = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: " ");
  DocumentLetter S = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "S");
  DocumentLetter h = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "h");
  DocumentLetter a2 = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "a");
  DocumentLetter h2 = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "h");
  DocumentLetter z = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "z");
  DocumentLetter a3 = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "a");
  DocumentLetter n = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "n");
  DocumentLetter e = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "e");
  DocumentLetter e2 = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "e");
  DocumentLetter r = new DocumentLetter(
      font: "ARIAL", size: 10, row: 0, column: 1, letter: "r");
  // and sooo on we have to create a lot of letters everytime we need a letter
  // However it is to be noticed that the letters are repeating many times
  //only different is the position of the letters
  // Therefore we can also approach a flyweight way to tackle the memory issues
}
