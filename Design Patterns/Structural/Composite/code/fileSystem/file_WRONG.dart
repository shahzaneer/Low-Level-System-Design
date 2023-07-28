class File {
  String fileName;

  File({
    required this.fileName,
  });

  void ls() => print("The file Name is $fileName");
}

class Directory {
  String directoryName;
  List<dynamic>? objects;

  Directory({required this.directoryName, required this.objects});

  void add(dynamic object) => objects?.add(object);

  void ls() {
    print("The Directory Name is $directoryName");

    for (dynamic object in objects!) {
      // This if-else is a complex structure in which we have to do type checking
      // We can eliminate it by using Composite Pattern
      if (object is File) {
        object.ls();
      } else if (object is Directory) {
        object.ls();
      }
    }
  }
}

void main(List<String> args) {
  File shahFile = new File(fileName: "shah.py");
  File noorFile = new File(fileName: "noor.cpp");
  Directory directory =
      new Directory(directoryName: "ShahCodes", objects: [shahFile, noorFile]);

  directory.add(File(fileName: "iqbal.md"));

  directory.add(
    Directory(
      directoryName: "Others",
      objects: [
        File(fileName: "Workout-plan.pdf"),
      ],
    ),
  );
  directory.ls();
}
