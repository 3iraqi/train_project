import 'package:flutter/material.dart';
import 'Account.dart';
import 'Category.dart';
import '../screens/home_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex=0;
  List<Widget> screens=[
    HoomeScreen(),
    Category(),

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
            label: 'My Category'
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
