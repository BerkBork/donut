import 'package:flutter/material.dart';

import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my list of tabs
  List<Widget> myTabs = const [
    //bubble tea tab
    MyTab(
      iconPath: 'lib/icons/bubble-tea.png',
    ),

    //noodles tab
    MyTab(
      iconPath: 'lib/icons/chinese-food.png',
    ),

    //dango tab
    MyTab(
      iconPath: 'lib/icons/dango.png',
    ),

    //donut tab
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),

    //mochi tab
    MyTab(
      iconPath: 'lib/icons/mochi.png',
    ),

    //pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza-slice.png',
    ),

    //waffle tab
    MyTab(
      iconPath: 'lib/icons/waffle.png',
    ),



  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // I want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: const [
                  Text(
                    'I want to eat',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    ' EAT',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
    
            const SizedBox(height: 24),
    
            // tab bar
            TabBar(tabs: myTabs)
    
            // tab bar view
          ],
        ),
      ),
    );
  }
}
