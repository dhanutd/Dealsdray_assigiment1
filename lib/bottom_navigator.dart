import 'package:dealsdray/Cart.dart';
import 'package:dealsdray/Deals.dart';
import 'package:dealsdray/Homepage.dart';
import 'package:dealsdray/catgores.dart';
import 'package:dealsdray/profile.dart';
import 'package:flutter/material.dart';
class Bottom_navigator extends StatefulWidget {
  const Bottom_navigator({super.key});

  @override
  State<Bottom_navigator> createState() => _Bottom_navigatorState();
}

class _Bottom_navigatorState extends State<Bottom_navigator> {
  int myindex=0;
  List<Widget>widgetlist=const[
    Homepage(),
    catgores(),
    Deal(),
    cart(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetlist[myindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myindex=index;
          });
        },
        currentIndex: myindex,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label:"Home",),
          BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.black,),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.more,color: Colors.black,),label: "Deals"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "Profile"),

        ],
        selectedLabelStyle: TextStyle(color: Colors.orange),
        unselectedLabelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
