import 'package:flutter/material.dart';
import 'package:playstore/screens/games/categoriesgames.dart';
import 'package:playstore/screens/games/childrengames.dart';
import 'package:playstore/screens/games/foreyougame.dart';
import 'package:playstore/screens/games/premiumgames.dart';
import 'package:playstore/screens/games/topchartsgames.dart';

class games extends StatefulWidget {
  const games({super.key});

  @override
  State<games> createState() => _gamesState();
}

class _gamesState extends State<games> {
List<Widget> screen=[
  const foreyougame(),
  const topchartsgame(),
  const childrengame(),
  const premiumgame(),
  const categoriesgame()
  
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5, child: Scaffold(
appBar: AppBar(
  title: const TabBar(
    isScrollable: true,
    tabs: [
      Tab(text: "Fore you",),
      Tab(text: "Top charts",), 
       Tab(text: "Children",),
       Tab(text: "Premium",),
        Tab(text: "Categories",),
    ]
    
    ),
),

body: TabBarView(children: [

  const foreyougame(),
  const topchartsgame(),
  const childrengame(),
  const premiumgame(),
  const categoriesgame()

]),
));

  }
}