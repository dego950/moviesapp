import 'package:flutter/material.dart';
import 'package:moviesapp/pages/favorites_pages.dart';
import 'package:moviesapp/pages/home_page.dart';
import 'package:moviesapp/pages/recent_pages.dart';
import 'package:moviesapp/pages/search_page.dart';

import '../constants/theme.dart';

class TabPages extends StatefulWidget {
  const TabPages({Key? key}) : super(key: key);

  @override
  State<TabPages> createState() => _TabPagesState();
}

class _TabPagesState extends State<TabPages> {

  int _paginaActual = 0;
  final List<Widget> _paginas =[
    HomePages(),
    FavoritesPages(),
    RecentPages(),
    SearchsPages()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          elevation: 2,
          backgroundColor: SeriesAppColor.black,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings))
          ],
        ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        onTap: (index){
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: const [
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
              icon: Icon(Icons.call_received_rounded),
              label: 'Recent',
              backgroundColor: SeriesAppColor.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Searchs',
              backgroundColor: SeriesAppColor.black
          )
        ],
      ),
    );
  }
}
