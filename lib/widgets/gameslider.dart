import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore/models/gameslidermodel.dart';

class Gameslider extends StatefulWidget {
  const Gameslider({super.key});

  @override
  State<Gameslider> createState() => _GamesliderState();
}

class _GamesliderState extends State<Gameslider> {
  List<Gslider> list = [
    Gslider(
        img:
            "https://play-lh.googleusercontent.com/Go_l4-iSF6OAzP6yxlh0CbbUXTrd24i_MY1yUIdDvC1PxU6rykPExufgQlZjDNhPfMc=w526-h296-rw",
        title: "Find your destiny and explore this ethereal fantasy RPG",
        subtitle: "AFK journey",
        caption: "4.2  Rated for 12+",
        logo:
            "https://play-lh.googleusercontent.com/R3uPV6IlI_xkiqw98gSo7RFJ4UL4i7z-su3AYcCNSU-valWSVHoewAG-fkpp6BVMB2oy=w240-h480-rw",
            heading: "Now available"),
    Gslider(
        img:
            "https://play-lh.googleusercontent.com/tp94yUIYX1rW8RQZGQQIPR35t71-oObL48ZIeWbyHgu1rchO1kt1SW71KoHNhxM-xceI=w851-h2160-rw",
        title: "Conquer new challenges in every day in the Streak event",
        subtitle: "Clash of Clans",
        caption: "3.9 Rated for 10+",
        logo:
            "https://play-lh.googleusercontent.com/LByrur1mTmPeNr0ljI-uAUcct1rzmTve5Esau1SwoAzjBXQUby6uHIfHbF9TAT51mgHm=s64-rw",
            heading: "Ends in 6d"),
    Gslider(
        img:
            "https://play-lh.googleusercontent.com/mBJ76FAXX5LPrcHXCdq2GwHS_4m7HtKqKwncesalkKtPFalxMUhQopkaaTy0CeNsozw6=w851-h2160-rw",
        title: "Welcome a new pet to your farm: a wooly Llama",
        subtitle: "Solitare Grand Ha..",
        caption: "3.5 Rated for 11+",
        logo:
            "https://play-lh.googleusercontent.com/VFS1D7o4sI6O96inUzrJP559t9RUvUwiHJ7mYTX4opmoABfxHfSYBZzX7RbEkjDXc-g=s64-rw",
            heading: "Update available")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      CarouselSlider(
        options: CarouselOptions(height: 300.0, viewportFraction: 1,
        enableInfiniteScroll: false),
        items: list.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(i.img), fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(i.heading,
                      style: TextStyle(color: Color.fromARGB(255, 249, 249, 249),
                      backgroundColor: Colors.grey.shade500),
                      ),
                      Center(
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.end,
                          
                          children: [
                          
                            Text(i.title,
                            style: TextStyle(color: const Color.fromARGB(255, 247, 246, 246),
                            fontWeight: FontWeight.bold,fontSize: 20),
                            
                            ),
                          ],
                        )),
                      ListTile(
                        leading: Image.network(i.logo),
                        title: Text(i.subtitle,
                        style:TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold)),

                        subtitle: Text(i.caption,
                        style:TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold)),
                        trailing: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(0, 6, 6, 6)), ),
                          
                          
                            onPressed: () {}
                            ,
                             child: Text("install",
                             style:TextStyle(color: Colors.white,)
                            )),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }).toList(),

        
      ),


      
      ),


      

    );
  }
}
