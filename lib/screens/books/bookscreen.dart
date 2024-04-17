import 'package:flutter/material.dart';
import 'package:playstore/screens/books/audiobooks.dart';
import 'package:playstore/screens/books/comics.dart';
import 'package:playstore/screens/books/ebooks.dart';
import 'package:playstore/screens/books/genres.dart';
import 'package:playstore/screens/books/newreleases.dart';
import 'package:playstore/screens/books/topfree.dart';
import 'package:playstore/screens/books/topselling.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {

  List<Widget> screen=[
    const ebooks(),
    const audiobooks(),
    const comics(),
    const genres(),
    const topselling(),
    const newreleases(),
    const topfree()
    
  ];
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(length: 7, child: Scaffold(
appBar: AppBar(


  title: const TabBar(
    isScrollable: true,
    tabs: [
      Tab(text: "Ebooks",),
      Tab(text: "Audiobooks",), 
       Tab(text: "Comics",),
       Tab(text: "Genres",),
        Tab(text: "Top selling",),
        Tab(text: "New releases",),
        Tab(text: "Top free",),

    ]
    
    ),
),

body: TabBarView(children: [
   const ebooks(),
    const audiobooks(),
    const comics(),
    const genres(),
    const topselling(),
    const newreleases(),
    const topfree()

]
   
)
     ));
  }
}