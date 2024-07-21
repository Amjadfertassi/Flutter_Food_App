import 'package:flutter/material.dart';
import 'package:flutter_donut/tab/burger_tab.dart';
import 'package:flutter_donut/tab/donut_tab.dart';
import 'package:flutter_donut/tab/pancake_tab.dart';
import 'package:flutter_donut/tab/pizza_tab.dart';
import 'package:flutter_donut/tab/smoothie_tab.dart';
import 'package:flutter_donut/util/my_tab.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: 'lib/icons/s1.png',
    ),

    // burger tab
    MyTab(
      iconPath: 'lib/icons/s2.png',
    ),

    // smoothie tab
    MyTab(
      iconPath: 'lib/icons/s3.png',
    ),

    // pancake tab
    MyTab(
      iconPath: 'lib/icons/s4.png',
    ),

    // pizza tab
    MyTab(
      iconPath: 'lib/icons/s5.png',
    ),
  ];
    return DefaultTabController(
      length: myTabs.length,
    child : Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0 ,
        leading: Padding(
          padding : const EdgeInsets.only(left: 8.0),
          child : IconButton(
            icon: Icon(
                Icons.menu,
                color : Colors.grey[800],
                size: 36 ,
            ),
            onPressed: (){
              //open drawer :
            },
          ),
                  ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 25.0),
              child : IconButton(
                icon:Icon(
                Icons.person,
                color : Colors.grey[800],
                size: 36,
              ),
              onPressed :(){

              }
              ),
              
            )
            
          ],
      ),
    //Body Section :
    body: Column(
        children: [
          // wanna eat
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0 , vertical: 18.0),
              child: Row(
                children: [
                  Text (
                    'I want to eat ',
                    style: TextStyle(fontSize:24),
                  ),
                  Text (
                    'EAT',
                    style: TextStyle(fontSize:32 , fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 24.0
          ),
          //tab bar 
            TabBar(tabs: myTabs),
          //tab bar view 
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),

                  // burger page
                  BurgerTab(),

                  // smoothie page
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  // pizza page
                  PizzaTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
