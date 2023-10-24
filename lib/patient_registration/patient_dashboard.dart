import 'package:flutter/material.dart';
import 'package:loginpagedesign/auth/patient_login_screen.dart';

import '../auth/signin_screen.dart';

class PatientDashboard extends StatefulWidget {
  const PatientDashboard({super.key});

  @override
  State<PatientDashboard> createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/backgroundimage.png'),
                  fit: BoxFit.cover
              )
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Center(child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/4225880/pexels-photo-4225880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text('Raj Aryan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                      SizedBox(
                        height: 4,
                      ),
                      Text('aryanraj73221@gmail.com | 9135885901',style: TextStyle(color: Colors.white),),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 35.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Appointments',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Online Consultant',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),

                            Row(
                              children: [
                                Text('My Tests',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Medical Order',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Order History',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Feedback',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Refer and Earn',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Settings',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Transaction',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Are you Doctor?',style: TextStyle(color: Colors.white,fontSize: 22),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,color: Colors.white,)

                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            ElevatedButton
                              (
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Set the desired button color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0), // Adjust the radius for a round button
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWithPhone()));
                                },
                                child: Text('LogOut',style: TextStyle(color: Colors.white),))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],

            ),
          ),

        ),
      ),
    );
  }
}
