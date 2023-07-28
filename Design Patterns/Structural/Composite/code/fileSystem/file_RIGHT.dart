abstract class FileSystem {
  void ls();
}

class File implements FileSystem {
  String fileName;

  File({
    required this.fileName,
  });

  @override
  void ls() {
    print("The file Name is $fileName");
  }
}

// It is a composite object
// simply make the abstract parent and mention the method you want to use throughout the system
//now instead of making objects list dynamic or object
//! make a composite type of parent as it will help you to get the rid of (if-else)
class Directory implements FileSystem {
  String directoryName;
  List<FileSystem>
      fileSystemList; //Directory implementing fileSytem and has a list of fileSystem

  Directory({
    required this.directoryName,
    required this.fileSystemList,
  });

  void add(dynamic object) => fileSystemList.add(object);
  @override
  void ls() {
    print("The Name of directory is $directoryName");

    for (dynamic object in fileSystemList) {
      // now there is no use of if-else and is operator doing type checking
      // as object is now of parent type and it do contain the method you wanted to revoke

      object.ls();
    }
  }
}

void main(List<String> args) {
  File shahFile = new File(fileName: "shah.py");
  File noorFile = new File(fileName: "noor.cpp");
  Directory directory = new Directory(
      directoryName: "ShahCodes", fileSystemList: [shahFile, noorFile]);

  directory.add(File(fileName: "iqbal.md"));

  directory.add(
    Directory(
      directoryName: "Others",
      fileSystemList: [
        File(fileName: "Workout-plan.pdf"),
      ],
    ),
  );
  directory.ls();
}
