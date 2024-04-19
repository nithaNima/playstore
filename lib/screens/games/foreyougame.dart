import 'package:flutter/material.dart';
import 'package:playstore/widgets/gamelist.dart';
import 'package:playstore/widgets/gameslider.dart';

class foreyougame extends StatefulWidget {
  const foreyougame({super.key});

  @override
  State<foreyougame> createState() => _foreyougameState();
}

class _foreyougameState extends State<foreyougame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      ListView(
        children: [
          SizedBox(
            height: 250,
            child: Gameslider(),
          ),
          SizedBox(
            height: 500,
            child:Gamelist() ,
          )
        ],
      )),
    );
  }
}