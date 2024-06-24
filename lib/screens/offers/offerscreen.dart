import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playstore/widgets/book1.dart';
import 'package:playstore/widgets/offerone.dart';

class offers extends StatelessWidget {
  const offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      ListView(
        children: [
         ListTile(
          leading:Text("Limited-time offer",
           style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black87
           ),),  
         ),
         Container(
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(width: .5),borderRadius: BorderRadius.circular(10)
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                child: Image.network("https://play-lh.googleusercontent.com/SsCbxQKTc_fv9DtaZ_dLZWWAMCMKhYN6czH104qvINXSIJVXoJelh6KlddRzVJLaf1y5=w526-h296-rw",
               ),
                
              ),
              SizedBox(
                height: 6,

              ),
              Text(" Robbery Bob 2:Double Trouble . Expires in 6 d",
              style: TextStyle(fontSize: 14),),
              SizedBox(
                height: 6,
              ),
              Text(" For the next week get a 25% discount on the paradiso costume & upgrade ",
              style: TextStyle(
                fontSize: 14
              ),),
              SizedBox(
                height: 15,
              ),
              Text("  Learn more",
              style: TextStyle(color: const Color.fromARGB(255, 11, 145, 255,
              ),fontSize: 16),
              ),
             
            ],
          ),
         ),
          ListTile(
                leading: Text("Games on sale",
                style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black87
           ),),
           trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(
                width: 500,
                height: 233,
                child: offerone(),
              ),
              ListTile(
                 leading: Text("Price drops on books",
                style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black87
           ),),
           trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(
                //width: 500,
                height: 500,
                child: Books1(),

              )
              
        ],
      )),
    );
  }
}