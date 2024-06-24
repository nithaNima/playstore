import 'package:flutter/material.dart';
import 'package:playstore/widgets/gamelist.dart';
import 'package:playstore/widgets/gameslider.dart';
import 'package:playstore/widgets/offerone.dart';

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
            height: 306,
            child:Gamelist() ,
          ),
          ListTile(
            title: Text("Casual Games",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(
            height: 500,
            child: offerone(),
          )
        ],
      )),
    );
  }
}