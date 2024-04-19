import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore/models/gamelistmodel.dart';

class Gamelist extends StatefulWidget {
  const Gamelist({super.key});

  @override
  State<Gamelist> createState() => _GamelistState();
}

class _GamelistState extends State<Gamelist> {
  List<Glist> list = [
    Glist(
        logo:
            "https://play-lh.googleusercontent.com/alCSQLIJVL4VB9OtGATP7f503VojDSgl_V78Zzz8AvGxfs1xaEmIFoVWrKtjigjPMecH=s64-rw",
        title: "Subway Surfers",
        subtitle1: "Action . Runner .Offline",
        subtitle2: "4.4 ★   0.93 GB",
        logo2:
            "https://play-lh.googleusercontent.com/L4-Oa6O8GV4I23JTmo-xKSjfyjowc0d2uGGfdScYkCTMk6ftxTwGowdAjgh2nOrJlEmI=s64-rw",
        title2: "Brain Test-Tricky Puzzles",
        subtitle3: "Puzzle . Search . Casual ",
        subtitle4: "4.1 ★   78 MB",
        logo3:
            "https://play-lh.googleusercontent.com/eJ9OJnbRer1jjg5ZeNAnTXKcGd2B_NEqxCp2UsefcCABeFBaj_pNl_WKYBjup2GVGGc=s64-rw",
        title3: "Fruit Ninja",
        subtitle5: "Strategy . Multiplayer",
        subtitle6: "3.1 ★   83 MB"),
    Glist(
        logo:
            "https://play-lh.googleusercontent.com/TLUeelx8wcpEzf3hoqeLxPs3ai1tdGtAZTIFkNqy3gbDp1NPpNFTOzSFJDvZ9narFS0=s64-rw",
        title: "Candy Crush",
        subtitle1: "Puzzle . Match .Casual",
        subtitle2: "4.3 ★   145 MB",
        logo2:
            "https://play-lh.googleusercontent.com/2fdEgYhRnpPRTSJLcJ7CpZ9-dFcfbNrP-BYVzzUoCwXyVBMRMVtBUrce0k_l-dV62ps=s64-rw",
        title2: "Hill Climb Racing 2 ",
        subtitle3: "Racing . Offline .Casual",
        subtitle4: "4.0 ★   123 MB",
        logo3:
            "https://play-lh.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag=s64-rw",
        title3: "8 Ball Pool",
        subtitle5: "Multiplayer . Simulation",
        subtitle6: "3.9 ★   111 MB")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
          child: Column(
        children: [
          
          const ListTile(
            leading: Text(
              "Sponsored .",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            title: Text(
              "Suggested for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          CarouselSlider(
            options: CarouselOptions(height: 250.0, viewportFraction: 1,enableInfiniteScroll: false),
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
