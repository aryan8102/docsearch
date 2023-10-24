import 'package:flutter/material.dart';

import '../../screen/updated_homepage.dart';

class EditDoctorProfile extends StatefulWidget {
  const EditDoctorProfile({super.key});

  @override
  State<EditDoctorProfile> createState() => _EditDoctorProfileState();
}

class _EditDoctorProfileState extends State<EditDoctorProfile> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025)
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }
  String derodownValue = 'one';
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
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 108,),
                        child: Container(
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/4225880/pexels-photo-4225880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                          ),
                        ),
                      ),

                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('EDIT',style: TextStyle(fontFamily: 'Roboto',
                  fontSize: 20.0,color: Colors.white),),

                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "  Name",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), // Change border color when focused
                          ),
                          hintText: "  Mobile Number",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), // Change border color when focused
                          ),
                          hintText: "  Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), // Change border color when focused
                          ),
                          hintText: "  Qualification",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "  Experince(Year)",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),

                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Row(
                    children: [
                      Text('   Gender',style: TextStyle(fontSize: 18,color: Colors.grey),),
                      SizedBox(
                        width: 190,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Center(
                          child: DropdownButton<String>(
                            value: derodownValue,
                            icon:Icon(Icons.arrow_drop_down),
                            onChanged: (String? newValue){
                              setState(() {
                                derodownValue =newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem<String>(
                                value: 'one',
                                child: Text('Male'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Two',
                                child: Text('FeMale'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Three',
                                child: Text('Others'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Center(
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: MaterialButton(
                            onPressed: _showDatePicker,
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Text('Date of Birth',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(_dateTime.year.toString()),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "  Blood Group",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                    },
                    child: Text('Update'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
