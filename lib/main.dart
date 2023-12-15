import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: UniPlanner(),
));

class UniPlanner extends StatelessWidget {
  const UniPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          'MyUniPlanner',
        style: TextStyle(
          color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            Text(
              'Meine Daten',
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 22.0,
              ),
            ),
            Text(
              'Matrikel Nummer: 123456789',
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 16.0,
              ),
            ),
            Text(
              'S.- Nummer: 123456789',
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
