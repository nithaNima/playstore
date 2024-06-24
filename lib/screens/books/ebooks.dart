import 'package:flutter/material.dart';
import 'package:playstore/widgets/book.dart';
import 'package:playstore/widgets/book1.dart';

class ebooks extends StatefulWidget {
  const ebooks({super.key});

  @override
  State<ebooks> createState() => _ebooksState();
}

class _ebooksState extends State<ebooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      ListView(children: [
        ListTile(
          title: Text("Recectly reduced ebooks",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),
          ),
          subtitle: Text("Our latest offers",style: TextStyle(fontSize: 14),),
          trailing: Icon(Icons.arrow_forward),
        ),
        SizedBox(
          width: 500,
          height: 200,
          child: Book(),
        ),
        ListTile(
          title: Text("Stories to save the world",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
          trailing: Icon(Icons.arrow_forward),
        ),
        SizedBox(
          width: 500,
          height: 200,
          child: Books1(),
        ),

      ],
        
      )
      ),
    );
  }
}