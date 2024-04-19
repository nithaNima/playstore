import 'package:flutter/material.dart';
import 'package:playstore/screens/apps/appscreen.dart';

import 'package:playstore/screens/books/bookscreen.dart';

import 'package:playstore/screens/games/gamescreen.dart';

import 'package:playstore/screens/offers/offerscreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _currentIndex = 1;
  final List<Widget> _screens = [const games(),const Apps(),const offers(),const book()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const TextField(
      
        
        
        
        
        
                decoration: InputDecoration(
                  labelText: "Search Apps &....",
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color.fromARGB(255, 225, 232, 239),
                   filled: true,

                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic_none,),
                   ),
      ),
      
      actions: const [
        Icon(Icons.notifications_none_outlined),
        SizedBox(height: 1,
        width: 6,),

        CircleAvatar(
          radius: 15,
          backgroundColor: 
          Colors.blueGrey,
          child: Text("N"),
        )
       
       
       
      //  IconButton(
      //   iconSize: 30,
        
      //   onPressed: (){}, icon:const Icon(Icons.circle,
      //  ))
      ],
                

      ),
      body: _screens[_currentIndex],
      



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Books',
          ),

        ],
      ),
      
    );

    
  }
}