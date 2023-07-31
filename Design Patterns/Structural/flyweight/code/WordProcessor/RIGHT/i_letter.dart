abstract class ILetter {
  void displayPosition({required int row, required int column});
}

class DocumentLetter implements ILetter {
  // Intrinsic Data will be here extrinsic method parameters main
  String font;
  int size;
  String letter;

  DocumentLetter({
    required this.font,
    required this.size,
    required this.letter,
  });

  @override
  void displayPosition({required int row, required int column}) {
    print("Letter positioned ROW: $row COLUMN: $column");
  }
}
