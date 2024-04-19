import 'package:carousel_slider/carousel_slider.dart';
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
        name: "Botim-video call",
        rating: "4.1 ★",),
        // image2:
        //     "https://play-lh.googleusercontent.com/C-KCc8M94x_6Jp6tdpsbe6F-zZsUyBukG-hllrHadaDGzk7Nc6hVob8Me9T1rdr6jxw=s64-rw",
        // name2: "Just Talk-Video chats & Calls",
        // rating2: "3.5 ★",
        // image3:
        //     "https://play-lh.googleusercontent.com/R7YH-bNDtE9TozD_BaU5_AwEqtmnqyt6m9NMu3y3WQOuVTwXTS73ofG4Gyi3ZBexGM5f=s64-rw",
        // name3: "Monkey-random videochat",
        // rating3: "4.5 ★"),
    app(
        image:
            "https://play-lh.googleusercontent.com/56TLfQm446_4g3R8TTqv_rHprlxdNAQLR2OkF7G-PsLASpCqEhC7gryQucOClYUkTX-y=s256-rw",
        name: "Zoom Rooms",
        rating: "4.3 ★",),
       
       app(  image:
           "https://play-lh.googleusercontent.com/l9Z7AiI2cMVZxZuajhYdvbKFdDAMOHq2v-fDgXbjlOy-dVqbAZmdJnmiz9obB--qr4Y=s64-rw",
        name: "Olive:Live video ",
       rating: "3.9 ★",),
        // image3:
        //     "https://play-lh.googleusercontent.com/17JS11gMIn_Dt7D5FL5EvO4HPbkwdsuXQPIZjg9pFhKKH_RlZXD29afNCljNAzfDi-4=s64-rw",
        // name3: "LivU-Live videochat",
        // rating3: "3.3 ★"),
    app(
      image:
          "https://play-lh.googleusercontent.com/-Udh2Qv4FyhP2uLfvNy27jzzXrrIfnDEi9kUqzhy8OQgGUcWXXud6nlg8UywECiRmME=s256-rw",
      name: "Skype",
      rating: "4.0 ★",
      // image2:
      //     "https://play-lh.googleusercontent.com/nQmoc61F0zbG9u5O3mi65vLclhnUjlldy7n5VmV26ALwApRnfU9iv3EL_G1K09rPBJ79=s64-rw",
      // name2: "Comera-chats & calls",
      // rating2: "4.4 ★",
      // image3:
      //     "https://play-lh.googleusercontent.com/jon96Txxdby0STL6llpqsJwtT54W0kcfIt2yEJIw3L6JR5XcI2b3HBYtHHIkGMh80A=s64-rw",
      // name3: "Wejoy-chats & calls",
      // rating3: "4.1 ★",
    ),
    app( image:
           "https://play-lh.googleusercontent.com/nQmoc61F0zbG9u5O3mi65vLclhnUjlldy7n5VmV26ALwApRnfU9iv3EL_G1K09rPBJ79=s64-rw",
       name: "Comera-chats",
       rating: "4.4 ★",),
       app(image:
          "https://play-lh.googleusercontent.com/jon96Txxdby0STL6llpqsJwtT54W0kcfIt2yEJIw3L6JR5XcI2b3HBYtHHIkGMh80A=s64-rw",
       name: "Wejoy-chats",
       rating: "4.1 ★",),
       app( image:
            "https://play-lh.googleusercontent.com/17JS11gMIn_Dt7D5FL5EvO4HPbkwdsuXQPIZjg9pFhKKH_RlZXD29afNCljNAzfDi-4=s64-rw",
         name: "LivU-videochat",
        rating: "3.3 ★"),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: 300, child: foreyouAPP()),
            SizedBox(
              height: 306,
              child: foryou(),
            ),
            ListTile(
              leading: Text("Video Chatting",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15

              ),),
              trailing: Icon(Icons.arrow_forward),
              
            ),
            Container(
              height: 200,
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  height: 200,
                  child: Column(
                    children: [
                      Image.network(
                        apps[index].image,
                        height: 100,
                        width: 100,
                      ),
                      Text(apps[index].name),
                      Text(apps[index].rating)
                    ],
                  ),
                );
              },
              itemCount: apps.length,
              scrollDirection: Axis.horizontal,
              ),
            )
          ],
        );
      },
      itemCount: 1,
      scrollDirection: Axis.vertical,
    )));
  }
}







//  










