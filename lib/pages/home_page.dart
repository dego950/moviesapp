import 'package:flutter/material.dart';
import 'package:moviesapp/constants/theme.dart';

class HomePages extends StatefulWidget {

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        backgroundColor: SeriesAppColor.black,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
      ),
      backgroundColor: SeriesAppColor.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: SeriesAppColor.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorities',
              backgroundColor: SeriesAppColor.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Recent',
              backgroundColor: SeriesAppColor.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Searchs',
              backgroundColor: SeriesAppColor.black
          )
        ],
        currentIndex: _selectedIndex,
        fixedColor: SeriesAppColor.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
