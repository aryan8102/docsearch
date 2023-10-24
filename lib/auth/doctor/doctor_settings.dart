import 'package:flutter/material.dart';

import '../signin_screen.dart';

class DoctorSettings extends StatefulWidget {
  const DoctorSettings({super.key});

  @override
  State<DoctorSettings> createState() => _DoctorSettingsState();
}

class _DoctorSettingsState extends State<DoctorSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                              Text('Feedback',style: TextStyle(color: Colors.white,fontSize: 22),),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,),

                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            children: [
                              Text('Privacey Policy',style: TextStyle(color: Colors.white,fontSize: 22),),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,),

                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            children: [
                              Text('Password',style: TextStyle(color: Colors.white,fontSize: 22),),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,),

                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            children: [
                              Text('Are you Patient?',style: TextStyle(color: Colors.white,fontSize: 22),),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,),
                            ],
                          ),

                          SizedBox(
                            height: 290,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                                primary: Colors.black, // Set the desired button color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0), // Adjust the radius for a round button
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                              },
                              child: Text('LogOut',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),))
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
    );
  }
}
