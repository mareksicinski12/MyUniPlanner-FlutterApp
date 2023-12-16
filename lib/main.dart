import 'package:flutter/material.dart';


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
            Positioned(
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
                const SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 50.0,
                        color: Colors.grey[300], // Change the color as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Line 1 Text',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 16.0,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press for Line 1
                            },
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Line 2 Text',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 16.0,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press for Line 2
                            },
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Line 3 Text',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 16.0,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press for Line 3
                            },
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}



