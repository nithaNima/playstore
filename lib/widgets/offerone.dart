import 'package:flutter/material.dart';
import 'package:playstore/models/offeronemodel.dart';

class offerone extends StatefulWidget {
  const offerone({super.key});

  @override
  State<offerone> createState() => _offeroneState();
}

class _offeroneState extends State<offerone> {
  List<OfferOne> offer = [
    OfferOne(
        game1:
            "https://play-lh.googleusercontent.com/-n3IGe2RWAsevJY_bEJ5yJYrirfK1m3LjDw2c2mdBSG9XuYDea5QvtsdhSaOrbbp0w=w416-h235-rw",
        game2:
            "https://play-lh.googleusercontent.com/D4DUUFQDCsH9NIEa8hjMjQSWdtNhGX1Fd_jT-23ogAb5uMMqttqQDUJcUt4K_u8RYOQ=s64-rw",
        gname1: "Arknights",
        gnmae2: "Strategy",
        gname3: "4.8",
        gname4: "₹135.00",
        gname5: "₹35.00"),
    OfferOne(
        game1:
            "https://play-lh.googleusercontent.com/KNfRw3KX429g3fyU-Es__5VDJJskhyw9mhC4Y1L9MGlfANxqOLWf2V1UpVpe8bV17_Q=w416-h235-rw",
        game2:
            "https://play-lh.googleusercontent.com/09nYzVTE8dtXuIDFz9VfHR9UJ5UlS8z3x944ydLIVF5fwIdXVRraVpVWzzbqzjwIEw=s64-rw",
        gname1: "Arcade",
        gnmae2: "Puzzle",
        gname3: "4.2",
        gname4: "₹ 240.00",
        gname5: "₹ 170.00"),
    OfferOne(
        game1:
            "https://play-lh.googleusercontent.com/p5xRNVM9YlvZmz6VQjq5N2A4Ix2kbeJabuisK1E55NzjS5ROg-SW2g6pbrb3agiAHRXe=w416-h235-rw",
        game2:"https://play-lh.googleusercontent.com/r37f-m8xoTqA-NWpKTMqlB4vHTeFv4vY_TBwzk0I32LgHD_X1yqJkHqAmx7a0fxAO4M=s64-rw",
        gname1: "Blade idle",
        gnmae2: "Simulation",
        gname3: "4.2",
        gname4: "₹ 400.00",
        gname5: "₹ 200.00")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemBuilder: (context, index) {
        OfferOne item = offer[index];
        return SizedBox(
          height: 200,
          width: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(item.game1), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(item.game2)),
                      borderRadius: BorderRadius.circular(10)),
                ),
                title: Text(
                  item.gname1,
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.gnmae2,
                      style: TextStyle(fontSize: 10),
                    ),
                    Row(
                      children: [
                        Text(
                          item.gname3,
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(item.gname4,
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(item.gname5, style: TextStyle(fontSize: 10))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: offer.length,
      scrollDirection: Axis.horizontal,
    )));
  }
}
