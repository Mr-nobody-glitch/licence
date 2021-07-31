import 'package:flutter/material.dart';
import '../widget/Main_Drawer.dart';
import 'categories_screen.dart';
import 'cart.dart';
import 'prfl/ProfilePage1.dart';
import 'profile.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String , Object>>  _pages=[
    {
      'page':CategoriesScreen(),
      'title':'categories',
    },
    {
      'page':PanierScreen(),
      'title':'Cart'
    },
    {
      'page':ProfilePage1(),
      'title':'mon profil',
    }
  ];

  int _selectedpageindex=0;

  void _selectpage(int value) {

    setState(() {
      _selectedpageindex=value;
    });


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text(_pages[_selectedpageindex]['title'])),
      body: _pages[_selectedpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(


        onTap: _selectpage ,
        backgroundColor:Theme.of(context).primaryColor,
        selectedItemColor:Theme.of(context).accentColor ,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedpageindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              title: Text("Cart")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              title: Text("profile")
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }


}

