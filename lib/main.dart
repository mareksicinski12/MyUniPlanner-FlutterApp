import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:table_calendar/table_calendar.dart';


void main() => runApp(const MaterialApp(
  home: UniPlanner(),
));

class UniPlanner extends StatefulWidget {
  const UniPlanner({super.key});

  @override
  _UniPlannerState createState() => _UniPlannerState();
}

class _UniPlannerState extends State<UniPlanner> {
  bool _showNavigationRail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/tudresdenlogo.png'),
            ),
            SizedBox(width: 8),
            Text(
              'MyUNI-Planner',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            color: Colors.white,
            onPressed: () {
              setState(() {
                _showNavigationRail = !_showNavigationRail;
              });
            },
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: Stack(
        children: [


          // NavigationRail
          if (_showNavigationRail)
            Container(
              child: Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                child: NavigationRail(
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.calendar_today),
                      label: Text('Calendar'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings),
                      label: Text('Settings'),
                    ),
                  ],
                  selectedIndex: 0,
                  onDestinationSelected: (int index) {
                    // Handle navigation here
                    setState(() {
                      _showNavigationRail = false;
                    });
                  },
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(250.0, 50.0, 50.0, 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 130.0,
                  width: 160.0,
                  color: Colors.grey[300],
                  child: Align(
                    alignment: const Alignment(0.0, 0.8),
                    child: Column(
                        children: [
                        const Text('Sat. 16.12.2023',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                     SizedBox(height: 4.0),
                     Container(
                      height: 80.0,
                      width: 80.0,
                      color: Colors.grey[300],
                      child: AnalogClock(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2.0, color: Colors.black),
                            color: Colors.transparent,
                            shape: BoxShape.circle
                        ),
                        width: 150.0,
                        isLive: true,
                        hourHandColor: Colors.black,
                        minuteHandColor: Colors.black,
                        showSecondHand: false,
                        numberColor: Colors.black87,
                        showNumbers: true,
                        showAllNumbers: false,
                        textScaleFactor: 1.4,
                        showTicks: false,
                        showDigitalClock: false,
                        datetime: DateTime.now(),
                      ),
                     ),
                        ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Padding(

            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Personal Data',
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Matriculation Nr.: 1234567',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blue[900],
                    ),
                    const SizedBox(width: 5.0,),
                    Text(
                      '@mailbox.tu-dresden.de',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                Text(
                  'My Courses',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        height: 3.0,
                        color: Colors.blue[300], // Change the color as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  color: Colors.grey[300],
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.blue[900], // Date container color
                        padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                        child: const Column(
                          children: [
                            Text(
                              'Mon, 1DS.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            Icon(Icons.edit, size: 18.0, color: Colors.white,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Hardware Praktikum',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press for Line 1
                              },
                              child: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  color: Colors.grey[300],
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.blue[900], // Date container color
                        padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                        child: const Column(
                          children: [
                            Text(
                              'Mon, 2DS.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            Icon(Icons.edit, size: 18.0, color: Colors.white,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Formale Systeme',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press for Line 2
                              },
                              child: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  color: Colors.grey[300],
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.blue[900], // Date container color
                        padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                        child: const Column(
                          children: [
                            Text(
                              'Mon, 3DS.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,

                              ),
                            ),
                            Icon(Icons.edit, size: 18.0, color: Colors.white,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Automotive Safety',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press for Line 3
                              },
                              child: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 3.0,
                        color: Colors.blue[300], // Change the color as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                // Add calendar
                SizedBox(
                  height: 255,
                  child: SingleChildScrollView(

                    child: TableCalendar(

                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    ),

                  ),
                ),

              ],
            ),
          ),
        ],
      ),

    );
  }
}



