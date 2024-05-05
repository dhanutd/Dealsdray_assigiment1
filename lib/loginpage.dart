import 'package:dealsdray/otp.dart';
import 'package:flutter/material.dart';

class PhoneLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 35,left: 30,right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Glad to see you!" ,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),)
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text("Please provide your number",)
                ],
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone number "
                ) ,
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp_valid()));},
                child: Container(
                  width: 250,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("Send Code",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              )

            ],
          ),
        )
    );
  }
}

class EmailLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35,left: 30,right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text("Glad to see you!" ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Please provide your email",)
              ],
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Email "
              ) ,
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp_valid()));},
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Send Code",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            )

          ],
        ),
      )
    );
  }
}



class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Image.asset("assest/mainphoto.png", height: 200, width: 200),
          ),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: 'Phone'),
                      Tab(text: 'Email'),
                    ],
                    labelColor: Colors.white, // Selected tab text color
                    unselectedLabelColor: Colors.black, // Unselected tab text color
                    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Selected tab text style
                    unselectedLabelStyle: TextStyle(fontSize: 16), // Unselected tab text style
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),// Customizes the shape of the indicator
                      color: Colors.redAccent, // Color of the indicator
                    ),
                    indicatorSize: TabBarIndicatorSize.tab, // Specifies the size of the indicator (tab or label)
                    labelPadding: EdgeInsets.symmetric(horizontal: 20), // Padding around the tab text
                    // labelPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        PhoneLoginPage(),
                        EmailLoginPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}