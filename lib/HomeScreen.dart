import 'package:flutter/material.dart';
import 'Account.dart';
import 'Favourite .dart';
import 'Home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex=0;
  List<Widget> screens=[
          Home(),
     Favourite(),

     Account()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('First App'),

      ),
      drawer: const Drawer(
        child:Center(
          child: Text('Menu'),
        ) 
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },

        items:
      const [
        BottomNavigationBarItem(

            icon: Icon(Icons.home),

          label: 'My Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'My Favorite'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'My Account'
        ),
      ],
        
      ),
    );
  }
}
