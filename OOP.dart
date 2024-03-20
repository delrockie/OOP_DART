import 'dart:io';

// Interface
abstract class Vehicle {
  void startEngine();
}

// Class that implements an interface
class Car implements Vehicle {
  @override
  void startEngine() {
    print("Car engine started");
  }
}

// Class that overrides an inherited method
class ElectricCar extends Car {
  @override
  void startEngine() {
    print("Electric car engine started");
  }
}

// Method that demonstrates the use of a loop
void printFileContents(List<String> lines) {
  for (String line in lines) {
    print(line);
  }
}

// Initialize an instance of a class with data from a file
class FileReader {
  File _file;

  FileReader(String filename) {
    _file = File(filename);
  }

  Future<List<String>> readFileContents() async {
    List<String> lines = [];
    await _file.readAsLines().then((list) {
      list.forEach((line) {
        lines.add(line);
      });
    });
    return lines;
  }
}

void main() async {
  // Initialize an instance of FileReader with a file name
  FileReader fileReader = FileReader("data.txt");

  // Read the contents of the file
  List<String> lines = await fileReader.readFileContents();

  // Print the file contents using the loop method
  printFileContents(lines);

  // Create an instance of ElectricCar and call startEngine
  ElectricCar electricCar = ElectricCar();
  electricCar.startEngine();
}