import 'package:first_project/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
  }

  int selectedIndex = 0;
  List<Widget> widgetsList = [
    ThirdPage(),
    Center(child: Container(
      child: Text(
        'No  Data Found',
        style: TextStyle(fontSize: 20),
      ),
    ),),
    Center(
      child: Container(
        child: Text(
          'No  Data Found',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
    Center(
      child: Container(
        child: Text(
          'No  Data Found',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex=value;
          });

        },
        currentIndex: selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_outlined), label: 'Faverite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
      ),
    );
  }



}