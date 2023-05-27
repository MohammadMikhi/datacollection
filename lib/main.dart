import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var timestamp = DateTime.now().toIso8601String();
                      Directory appDocumentsDirectory =
                          await getApplicationDocumentsDirectory();
                      File file =
                          File('${appDocumentsDirectory.path}/detected.csv');
                      await file.writeAsString('$timestamp,Pothole Front\n',
                          mode: FileMode.append);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(250, 80),
                        backgroundColor: Colors.green),
                    child: const Text('Pothole Front',
                        style: TextStyle(fontSize: 24)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var timestamp = DateTime.now().toIso8601String();
                      Directory appDocumentsDirectory =
                          await getApplicationDocumentsDirectory();
                      File file =
                          File('${appDocumentsDirectory.path}/detected.csv');
                      await file.writeAsString('$timestamp,Pothole Back\n',
                          mode: FileMode.append);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(250, 80),
                        backgroundColor: Colors.greenAccent),
                    child: const Text('Pothole Back',
                        style: TextStyle(fontSize: 24)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var timestamp = DateTime.now().toIso8601String();
                      Directory appDocumentsDirectory =
                          await getApplicationDocumentsDirectory();
                      File file =
                          File('${appDocumentsDirectory.path}/detected.csv');
                      await file.writeAsString('$timestamp,Speed bump Up\n',
                          mode: FileMode.append);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(250, 80),
                        backgroundColor: Colors.blue),
                    child: const Text('Speed bump Up',
                        style: TextStyle(fontSize: 24)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var timestamp = DateTime.now().toIso8601String();
                      Directory appDocumentsDirectory =
                          await getApplicationDocumentsDirectory();
                      File file =
                          File('${appDocumentsDirectory.path}/detected.csv');
                      await file.writeAsString('$timestamp,Speed bump Down\n',
                          mode: FileMode.append);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(250, 80),
                        backgroundColor: Colors.blueAccent),
                    child: const Text('Speed bump Down',
                        style: TextStyle(fontSize: 24)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
