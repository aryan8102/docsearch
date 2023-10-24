import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginpagedesign/auth/verify_code.dart';

import '../utils/utils.dart';

import '../widget/round_button.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {

  bool loading = false;
  final phoneNumberController = TextEditingController();
  final auth =FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration:   BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.grey.shade900,
                  Colors.blue.shade800,
                  Colors.blue.shade400,
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Login',style: TextStyle(color: Colors.white,fontSize: 48),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Welcome Back',style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children:<Widget> [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)

                            )]
                        ),
                        child: Column(
                          children:<Widget> [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField(
                                controller: phoneNumberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Phone Number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RoundButton(title: 'Login',loading: loading, onTap: (){
                        setState(() {
                          loading = true;
                        });

                        auth.verifyPhoneNumber(
                            phoneNumber: "+91${phoneNumberController.text.toString()}",
                            verificationCompleted: (_){
                              setState(() {
                                loading = false;
                              });
                            },
                            verificationFailed: (e){
                              utils().toastMessage(e.toString());
                            },
                            codeSent: (String verificationId ,int? token){

                              setState(() {
                                loading = false;
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context)=>VerifyCodeScreen(verificartionId:verificationId)));
                              });
                            },
                            codeAutoRetrievalTimeout: (e){
                              utils().toastMessage(e.toString());
                              setState(() {
                                loading = false;
                              });
                            });
                      }),
                      SizedBox(
                        height: 50,
                      ),
                      Text("Continue with social media",style: TextStyle(color: Colors.grey),),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children:<Widget> [
                          Expanded(
                            child: Container(
                              height:50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                              ),
                              child: Center(
                                child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: Container(
                              height:40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text("Google",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );;
  }
}
