import 'package:flutter/material.dart';
import 'package:playstore/models/foreyouappmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class foreyouAPP extends StatefulWidget {
  const foreyouAPP({super.key});

  @override
  State<foreyouAPP> createState() => _foreyouAPPState();
}

class _foreyouAPPState extends State<foreyouAPP> {
  List<AppForeyou> imglist = [
    AppForeyou(
      img:
          "https://play-lh.googleusercontent.com/Nw3VaIBzAgJdApPkVT1CyDKQ3b2mlJyBq4ksH9TyrxlR4AxeK2Sz9ekFkSfFl_hiRQ=w851-h2160-rw",
      title:
          "Witness IPL's Epic Encounters! Your IPL Seat Awaits on BookMyS...  ",
      subtitle: "BookMyShow",
      caption: "4.2  Rated for 12+",
      logo:
          "https://sg-res.9appsdownloading.com/sg/res/jpg/47/1c/8aee9ccfcda17ad00d0d8f1d7ebd-j6d.jpg",
    
    ),
    AppForeyou(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRBYOSkR1CBcRBCNlufW_ahEC8iHZnARypE8UPQObTLA&s",
      title:
          "Audible Audio books and podcasts",
      subtitle: "AudioBooks",
      caption: "4.0  Rated for 10+",
      logo:
          "https://play-lh.googleusercontent.com/pwzZK-7oQexraeU0mOrQgFIck-QSS89rH0eWjehctp8XskRSpixPNVlA0YYlRXHbA2Iz=s48-rw",
      
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CarouselSlider(
        options: CarouselOptions(height: 300.0, viewportFraction: 1),
        items: imglist.map((i) {
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

                      Text("Trending",
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

