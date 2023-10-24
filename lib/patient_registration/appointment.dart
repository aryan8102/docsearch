import 'package:flutter/material.dart';
import 'package:loginpagedesign/screen/updated_homepage.dart';

class Apointment extends StatefulWidget {
  const Apointment({super.key});

  @override
  State<Apointment> createState() => _ApointmentState();
}

class _ApointmentState extends State<Apointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
body: Container(
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/backgroundimage.png'),
          fit: BoxFit.cover
      )
  ),
  child: Column(
    children: [
      SizedBox(
        height: 80,
      ),
      Column(
        children: [
          Center(child: Text('Appointments',style: TextStyle(fontSize: 25,color: Colors.white),))
        ],
      ),
     Column(
       children: [
         Image(image: AssetImage('assets/images/Noapointment1.png'))
       ],
     ),
      SizedBox(
        height: 20,
      ),
      Column(
        children: [
          Text('you havent booked any appointment yet',style: TextStyle(fontSize: 20,color: Colors.white),),
          SizedBox(
            height: 15,
          ),
          Text('Start by looking near you',style: TextStyle(fontSize: 17,color: Colors.white),),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        width: 250,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Change the background color
              onPrimary: Colors.white, // Change the text color
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
            },
            child: Text('Book  Now',style: TextStyle(fontWeight: FontWeight.bold),)),
      )
    ],
  ),
),
    );
  }
}
