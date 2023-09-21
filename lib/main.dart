import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
        

    );
  }
  
  
}

class NavigationExample extends StatefulWidget{
  @override
  State<NavigationExample> createState() => _NavigationExampleState();

  }

class _NavigationExampleState extends State<NavigationExample> {

  int currentPageIndex = 0;
  @override

  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: NavigationBar(
      onDestinationSelected:(int index){
        setState(() {
          currentPageIndex=index;
        });
      },
      selectedIndex: currentPageIndex,
      backgroundColor: Colors.cyan,
      destinations: [
        NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'home',
        selectedIcon: Icon(Icons.home),
  ),

        NavigationDestination(
            icon: Icon(Icons.school_outlined),
            label: 'school',
        selectedIcon: Icon(Icons.school),
        ),

       NavigationDestination(
           icon: Icon(Icons.business_outlined),
           label: 'business',
       selectedIcon: Icon(Icons.business),
       ),
        NavigationDestination(
            icon: Icon(Icons.call_made),
            label: 'call',
        selectedIcon: Icon(Icons.call),
        ),
      ],
    ),
    body: <Widget> [
      Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Text('page 1'),
      ),
      Container(
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Text('page 2'),
      ),
      Container(
        color: Colors.redAccent,
        alignment:Alignment.bottomCenter ,
        child: Text('page 3'),
      ),
      Container(
        color: Colors.blue,
        alignment: Alignment.bottomLeft,
        child: Text('page 4'),

      ),
    ][currentPageIndex]

  );

  }
}



