import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController searchcontroll= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Row(
           children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
             Expanded(
               child: Container(
                 height: 50,
                // width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset('assest/logo.jpg',
                        height: 30,width: 30,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextFormField(
                          controller: searchcontroll,
                          decoration: InputDecoration(
                            hintText: "Search here",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 9.5),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    ],
                  ),
                ),
               ),
             ),
             IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
           ],
         ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,top: 20,bottom: 10,right: 8),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assest/banaerphoto1.jpg",height: 150,width: 270,)),
                    SizedBox(width: 5,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assest/banaerphoto2.jpg",height: 150,width:270,)),
                    SizedBox(width: 5,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assest/banaerphoto3.jpg",height: 150,width: 270,)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[200]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Kyc Pending",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("You need to provide the required",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                        Text(""),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("documents for your account activation.",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Click here",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueAccent,
                    ),
                    child: TextButton(onPressed: (){}, child: Icon(Icons.mobile_friendly,color: Colors.white,)),
                  ),
                  // SizedBox(width: 5,),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    ),
                    child: TextButton(onPressed: (){}, child: Icon(Icons.laptop,color: Colors.white,)),
                  ),
                  // SizedBox(width: 5,),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      color: Colors.pinkAccent
                    ),
                    child: TextButton(onPressed: (){}, child: Icon(Icons.camera_alt,color: Colors.white,)),
                  ),
                  // SizedBox(width: 5,),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange
                    ),
                    child: TextButton(onPressed: (){}, child: Icon(Icons.lightbulb,color: Colors.white,)),
                  ),
                  // SizedBox(width: 5,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 500,
                // width: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("EXCLUSIVE FOR YOU ",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 25,
                               color: Colors.white
                             ),
                           ),
                           Icon(Icons.arrow_right,color: Colors.white,),
                         ],
                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 25,right: 25,bottom: 15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 350,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.green
                                          ),
                                          child: Center(
                                            child: Text("42% off",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assest/phone1.png",height: 250,width: 200,),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Redmi prime 10",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 350,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.green
                                          ),
                                          child: Center(
                                            child: Text("2% off",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assest/phone2.jpg",height: 250,width: 200,),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("iphone 13",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 350,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.green
                                          ),
                                          child: Center(
                                            child: Text("32% off",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assest/phone1.png",height: 250,width: 200,),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Nokia 150",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 350,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.green
                                          ),
                                          child: Center(
                                            child: Text("12% off",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assest/phone2.jpg",height: 250,width: 200,),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Moto edge 40",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
