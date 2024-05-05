import 'package:dealsdray/Homepage.dart';
import 'package:flutter/material.dart';
class Otp_valid extends StatefulWidget {
  const Otp_valid({super.key});

  @override
  State<Otp_valid> createState() => _Otp_validState();
}

class _Otp_validState extends State<Otp_valid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 30,right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assest/otp.jpg",height: 200,width: 100,),
            Row(children: [
              Text("OTP Verification",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),),

            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("We sent otp to your number or email",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey
                ),),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: TextFormField(
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: TextFormField(
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: TextFormField(
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: TextFormField(
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));},
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            )

          ],
        ),
      ),
    );
  }
}
