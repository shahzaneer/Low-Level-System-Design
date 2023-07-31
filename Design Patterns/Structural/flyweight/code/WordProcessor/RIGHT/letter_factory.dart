import 'i_letter.dart';

class LetterFactory {
  static Map<String, DocumentLetter> cachedLetters = {};

  DocumentLetter? createLetter({required String letter}) {
    if (cachedLetters.containsKey(letter)) {
      return cachedLetters[letter]!;
    } else {
      if (letter == "a") {
        DocumentLetter a = DocumentLetter(font: "Arial", size: 10, letter: "a");
        cachedLetters[letter] = a;
        return cachedLetters[letter]!;
      } else if (letter == "b") {
        DocumentLetter b = DocumentLetter(font: "Arial", size: 10, letter: "b");
        cachedLetters[letter] = b;
        return cachedLetters[letter]!;
      }
      // Other letters for one time ...

      return null;
    }
  }
}

// ! I totally understand that we can make it more modular but im leaving it
