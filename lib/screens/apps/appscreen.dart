import 'package:flutter/material.dart';
import 'package:playstore/screens/apps/categoriesapp.dart';
import 'package:playstore/screens/apps/childrenapp.dart';
import 'package:playstore/screens/apps/foreyouapp.dart';
import 'package:playstore/screens/apps/topchartapp.dart';


class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  List<Widget> screen=[
   const foreyouAPP(),
   const topchartapp(),
   const childrenapp(),
   const categoriesapp()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
appBar: AppBar(
  title: const TabBar(
    isScrollable: true,
    tabs: [
      Tab(text: "Fore you",),
      Tab(text: "Top charts",), 
       Tab(text: "Children",),
        Tab(text: "Categories",),
    ]
    
    ),
),
body: const TabBarView(children: [
   foreyouAPP(),
   topchartapp(),
   childrenapp(),
   categoriesapp()



]),


    ));
  }
}