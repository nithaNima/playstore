import 'package:flutter/material.dart';
import 'package:playstore/models/foryou2model.dart';
//import 'package:playstore/screens/apps/appscreen.dart';
import 'package:playstore/widgets/foreyou.dart';
import 'package:playstore/widgets/foreyouapp.dart';

class for_you extends StatefulWidget {
  const for_you({super.key});

  @override
  State<for_you> createState() => _for_youState();
}

class _for_youState extends State<for_you> {
  List<app> apps = [
    app(
        image:
            "https://play-lh.googleusercontent.com/01KJYHefo1hmyWDVUZPPpdWhlnFp-rUpV9WJkbUVyJ7F1pE3XoPwZgxkXgWqd0TTBus=s256-rw",
        name: "Botim-video call & voice call",
        rating: "4.1 ★"),
    app(
        image:
            "https://play-lh.googleusercontent.com/56TLfQm446_4g3R8TTqv_rHprlxdNAQLR2OkF7G-PsLASpCqEhC7gryQucOClYUkTX-y=s256-rw",
        name: "Zoom Rooms Controller",
        rating: "4.3 ★"),
    app(
        image:
            "https://play-lh.googleusercontent.com/-Udh2Qv4FyhP2uLfvNy27jzzXrrIfnDEi9kUqzhy8OQgGUcWXXud6nlg8UywECiRmME=s256-rw",
        name: "Skype",
        rating: "4.0 ★"),
        app(
        image:
            "https://play-lh.googleusercontent.com/DjOehhj7NQVdm1dmBAGdmxgoNR76IxZPG5lHoDx0EAKv8NGgvgxm4GuzQ-iTOk1nMQ=s64-rw",
        name: "Google Meet",
        rating: "4.2 ★")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        SizedBox(height: 300, child: foreyouAPP()),
        SizedBox(
          height: 306,
          child: foryou(),
        ),
        ListTile(
          leading: Text(
            "Video Chatting",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        Container(
         
        ),
      ]),
    ));
  }
}
