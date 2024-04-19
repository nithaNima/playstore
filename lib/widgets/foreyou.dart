import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore/models/formodel.dart';
import 'package:playstore/widgets/foreyouapp.dart';

class foryou extends StatefulWidget {
  const foryou({super.key});

  @override
  State<foryou> createState() => _foryouState();
}

class _foryouState extends State<foryou> {
  List<ForYou> list = [
    ForYou(logo:
            "https://play-lh.googleusercontent.com/r9zF77jorOmkaRlXnvsLiuVQ3p_gYW8y7x_UL-COoH9PxaTUEMbW1wiwS0z1n1Q31Q=s64-rw",
        title: "Photoshop Express",
        subtitle1: "Editing . Creating ideas",
        subtitle2: "4.6 ★  234 MB",
       
        logo2: "https://play-lh.googleusercontent.com/uqq6a-fHayQxsNQkxB9ZZXag8N7Du5mOEKcScr9yltHqx3RKgCdr9VJHKGO2vY_GUe0=s64-rw",
        title2: "Battlegrounds Mobile India",
        subtitle3: "Action . Tactical shooter",
        subtitle4: "4.4 ★  0.93 GB",
        logo3: "https://play-lh.googleusercontent.com/m2BsUgJ58MdwwzVRcxCr7JBgfrP7tfHHETJnJ5yI2fMY8mT2SvSas20Iyy099774gxzt=s64-rw",
        title3: "Chamet",
        subtitle5: "Social . Dating . Networking",
        subtitle6: "4.1 ★  107 MB"),
        ForYou(logo:
            "https://play-lh.googleusercontent.com/JayAs215bUQgX_60ksPhtcSAv5AS_FDz_lYQT2WywJ-BuCICL4vmyhN4H1tGqSqo2Q=s256-rw",
        title: "H&M",
        subtitle1: "Fashion . Shopping",
        subtitle2: "4.6 ★  234 MB",
       
        logo2: "https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk=s64-rw",
        title2: "Google pay",
        subtitle3: "Finance . Payments",
        subtitle4: "4.4 ★   0.93 GB",
        logo3: "https://play-lh.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=s64-rw",
        title3: "WhatsApp Messanger",
        subtitle5: "Calling . Dating . Chatting",
        subtitle6: "4.1 ★  107 MB")

    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          
          const ListTile(
            leading: Text(
              "Sponsered .",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            title: Text(
              "Suggested for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          CarouselSlider(
            options: CarouselOptions(height: 250.0, viewportFraction: 1),
            items: list.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Image.network(i.logo),
                        title: Text(i.title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(i.subtitle1), Text(i.subtitle2)],
                        ),
                      ),
                       ListTile(
                        leading: Image.network(i.logo2),
                        title: Text(i.title2),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(i.subtitle3), Text(i.subtitle4)],
                        ),
                      ),
                       ListTile(
                        leading: Image.network(i.logo3),
                        title: Text(i.title3),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(i.subtitle5), Text(i.subtitle6)],
                        ),
                      ),
                      
                    ],
                    
                  );
                  
                },
              );
            }).toList(),
          ),
        ],
      )),
    );
  }
}
