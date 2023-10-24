import 'package:flutter/material.dart';

class ChangePasswordForDoctor extends StatefulWidget {
  const ChangePasswordForDoctor({super.key});

  @override
  State<ChangePasswordForDoctor> createState() => _ChangePasswordForDoctorState();
}

class _ChangePasswordForDoctorState extends State<ChangePasswordForDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroundimage.png'),
                fit: BoxFit.cover
            )
        ),
        child: Padding(

          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(child: Text('Password',style: TextStyle(fontSize: 24, color: Colors.white),)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('Change Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),))),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment:Alignment.centerLeft,
                      child: Text('You will be logged out of all sessions except \nthis one to protect your account if anyone \nis trying to gain access.',style: TextStyle(fontSize: 15,color: Colors.white),)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Your password must be at least six characters \nand should include a combination of numbers, \nletters and special characters (!@%).',style: TextStyle(fontSize: 15,color: Colors.white)),

                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 59,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "  Current Password",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                              border: InputBorder.none
                          ),

                        ),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 59,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "   New Password",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                              border: InputBorder.none,
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 59,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "  Retype Password",
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                              border: InputBorder.none,
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Forgotten your password?',style: TextStyle(color: Colors.cyan,fontSize: 16),)),
                    SizedBox(
                      height: 30,
                    ),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black), ),
                    onPressed: (){}, child: Text('Change Password',style: TextStyle(color: Colors.white),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
