import 'package:flutter/material.dart';
import 'package:playstore/models/bookmodel.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  List<Books> list = [
    Books(
        img:
            "https://books.google.com/books/publisher/content/images/frontcover/LxNkEAAAQBAJ?fife=w256-h256",
        name: "The Abandoned",
        oldp: "₹297.89",
        newp: "₹200.00"),
    Books(
        img:
            "https://books.google.com/books/publisher/content/images/frontcover/7VaoDwAAQBAJ?fife=w256-h256",
        name: "The Choice Of..",
        oldp: "₹150.00",
        newp: "₹80.00"),
    Books(
        img:
            "https://books.google.com/books/publisher/content/images/frontcover/MV76DQAAQBAJ?fife=w256-h256",
        name: "Love Hina Omnibus",
        oldp: "₹570.00",
        newp: "₹350.00"),
    Books(
        img:
            "https://books.google.com/books/content/images/frontcover/p1MULH7JsTQC?fife=w256-h256",
        name: "Dune-Volume1",
        oldp: "₹456.45",
        newp: "₹376.00"),
    Books(
        img:
            "https://books.google.com/books/publisher/content/images/frontcover/7tDaDwAAQBAJ?fife=w256-h256",
        name: "Dolly Kill Kill",
        oldp: "₹219.50",
        newp: "₹190.64")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView.builder(itemBuilder: (context, index) {

        return  Container(
              height: 200,
             
                  width: 130,
                 
                  child: Column(
                    children: [
                      Image.network(
                        list[index].img,
                        height: 150,
                        width: 150,
                      ),
                      Text(list[index].name),
                      Row(
                        children: [
                          Text(list[index].oldp,style: TextStyle(decoration: TextDecoration.lineThrough),),
                          SizedBox(width: 5,),
                          Text(list[index].newp)
                        ],
                      ),
                      
                    ],
                  ),
                );
              },
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              ),
            )
            );
          
        
      }
     


     
  }

