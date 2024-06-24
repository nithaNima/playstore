import 'package:flutter/material.dart';
import 'package:playstore/models/bokk1model.dart';

class Books1 extends StatefulWidget {
  const Books1({super.key});

  @override
  State<Books1> createState() => _Books1State();
}

class _Books1State extends State<Books1> {
  @override
  Widget build(BuildContext context) {
    List<boook1> lists=[
      boook1(img1: "https://books.google.com/books/publisher/content/images/frontcover/icIeEAAAQBAJ?fife=w256-h256", name1: "Clean Air", oldp1: "₹345.50", newp1: "₹300.00"),
      boook1(img1: "https://books.google.com/books/publisher/content/images/frontcover/8sV0EAAAQBAJ?fife=w256-h256", name1: "Cold People", oldp1: "₹255.50", newp1: "₹190.50"),
      boook1(img1: "https://books.google.com/books/publisher/content/images/frontcover/DtEDEAAAQBAJ?fife=w256-h256", name1: "Firebreak", oldp1: "₹100.70", newp1: "₹45.00"),
      boook1(img1: "https://books.google.com/books/content/images/frontcover/Q7oXXvpUqtYC?fife=w256-h256", name1:"Orleans", oldp1: "₹150.00", newp1: "₹110.70"),
      boook1(img1: "https://books.google.com/books/publisher/content/images/frontcover/5KNuEAAAQBAJ?fife=w256-h256", name1: "The Stranded", oldp1: "₹110.75", newp1: "₹75.00")
    ];
    return Scaffold(
      body: SafeArea(child: ListView.builder(itemBuilder: (context, index) {

        return  Container(
              height: 200,
             
                  width: 130,
                 
                  child: Column(
                    children: [
                      Image.network(
                        lists[index].img1,
                        height: 150,
                        width: 150,
                      ),
                      Text(lists[index].name1),
                      Row(
                        children: [
                          Text(lists[index].oldp1,style: TextStyle(decoration: TextDecoration.lineThrough),),
                          SizedBox(width: 5,),
                          Text(lists[index].newp1)
                        ],
                      ),
                      
                    ],
                  ),
                );
              },
              itemCount: lists.length,
              scrollDirection: Axis.horizontal,
              ),
            ));
          
        
  }
}