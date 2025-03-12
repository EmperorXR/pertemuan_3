import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static final title = 'Pertemuan 3';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyApp.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(MyApp.title), backgroundColor: Colors.blue),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            //Beranda
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text('Beranda'),
              selectedColor: Colors.blue,
            ),

            //Kalendar
            SalomonBottomBarItem(
              icon: Icon(Icons.calendar_month),
              title: Text('Kalendar'),
              selectedColor: Colors.blue,
            ),

            //Maps
            SalomonBottomBarItem(
              icon: Icon(Icons.approval_rounded),
              title: Text('Maps'),
              selectedColor: Colors.blue,
            ),

            //Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              selectedColor: Colors.blue,
            ),

            //Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
