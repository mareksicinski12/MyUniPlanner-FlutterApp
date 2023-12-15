import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: UniPlanner(),
));

class UniPlanner extends StatelessWidget {
  const UniPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          'MyUNI-Planner',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Personal Data',
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Matriculation Nr.: 1234567',
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 12.0,
              ),
            ),
            Text(
              'S-Nr.: 1234567',
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
