import 'package:flutter/material.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Expanded(
        child: Drawer(
          child: ListView(
            children: [
              Text('data')
            ],
          ),
        ),
      ),

        body: SingleChildScrollView(

          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(

              child: Column(
                children: [


                  Row(
                    children: [
                      Container(margin: EdgeInsets.only(left: 14,top: 11,right: 188),
                        width: 158,
                        height: 45,
                        child: Text('Your Partner in \nHealth & Healing',
                          style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 0,
                              color: Color(0xFF212427))
                          ,),

                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                    ),
                    child: TextField(

                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),

                          labelText: 'Search doctor, hospitals..'),

                    ),


                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 40,width: 40,
                              decoration:BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/doc1.png'), )
                              ),


                            ),
                            Text('   Doctor',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/conslt.png'))
                                )
                            ),
                            Text('Counsultancy',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/med.png'))
                                )
                            ),
                            Text('Medicines',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/hospital.png')),
                                )
                            ),
                            Text('Hospitals',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/hospital.png')),
                                )
                            ),
                            Text('LabTest',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Card(
                          child: Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'We are ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'providing',
                                        style: TextStyle(
                                          color: Color(0xFFFBBC05),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' the \nbest',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' health ',
                                        style: TextStyle(
                                          color: Color(0xFF005473),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'services  ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nAlways caring about your health,\nFind your doctors and make an \nappointment  ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ]
                                ),

                              ),

                              Container(
                                  width: 200,
                                  height: 150,
                                  child: Image.asset('assets/images/weprovide.png',fit: BoxFit.cover,)

                              )
                            ],

                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Text(
                    'Consult online doctors for any health concern',
                    style: TextStyle(
                      color: Color(0xFF005473),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 358,
                    height: 150,
                    child: Wrap(direction: Axis.vertical,
                      spacing: 15,
                      runSpacing: 13,
                      children: [
                        Container(
                          width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),

                          child: Container(
                            width: 37,
                            height: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/dentist.png'),
                            ),

                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Dentist',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                          ),

                        ),

                        Container( width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),child: Container(
                            width: 37,
                            height: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Cardio.png'),
                            ),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Cardiology',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                          ),
                        ),Container( width: 73.25,
                          height: 60,decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),),child: Container(
                            width: 37,
                            height: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/ortho.png'),
                            ),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Orthopaedic',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                          ),),
                        Container(
                          width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Container(
                            width: 37,
                            height: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Gastrology.png')),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Gastrology',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        Container(
                          width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),child: Container(
                          width: 37,
                          height: 35,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Oncology.png'),),
                          ),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text('Oncology',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                        ),
                        ),
                        Container(
                          width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),child: Container(
                          width: 37,
                          height: 35,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Neurology.png'))),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text('Neurology',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),))),

                        ),
                        ),Container( width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),child: Container(
                            width: 37,
                            height: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Dermato.png'))),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Dermatology',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                          ),
                        ),Container( width: 73.25,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF3F849C)),
                              borderRadius: BorderRadius.circular(5),

                            ),
                          ),child: Container(
                            width: 37,
                            height: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Pediatrics.png'))
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Pediatrics',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),)),
                          ),
                        )],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.blue, // Border color
                              width: 0.5,           // Border width
                            ),
                          ),
                          child: Card(
                            child: Row(
                              children: [
                                Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Why',
                                                  style: TextStyle(
                                                    color: Color(0xFF212427),
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' Doc ',
                                                  style: TextStyle(
                                                    color: Color(0xFF005473),
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Search',
                                                  style: TextStyle(
                                                    color: Color(0xFFFBBC05),
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '?',
                                                  style: TextStyle(
                                                    color: Color(0xFF212427),
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\n1. Round-the- clock doctor availability',
                                                  style: TextStyle(
                                                    color: Color(0xFF212427),
                                                    fontSize: 10,
                                                    fontFamily: 'Inter',
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\n2. Broad range of Specialities',
                                                  style: TextStyle(
                                                    color: Color(0xFF212427),
                                                    fontSize: 10,
                                                    fontFamily: 'Inter',

                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\n3. Order Medicines & tests online',
                                                  style: TextStyle(
                                                    color: Color(0xFF212427),
                                                    fontSize: 10,
                                                    fontFamily: 'Inter',

                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\n4. Digitised health records',
                                                  style: TextStyle(
                                                    color: Color(0xFF212427),
                                                    fontSize: 10,
                                                    fontFamily: 'Inter',

                                                    height: 0,
                                                  ),
                                                ),
                                              ]
                                          ),

                                        ]
                                    )
                                ),

                                Container(
                                    width: 200,
                                    height: 150,
                                    child: Image.asset('assets/images/Whydoc.jpeg',fit: BoxFit.cover,)

                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  BottomNavigationBar(
                      items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                  icon: Icon(Icons.home),
          label: 'Home',
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.medical_information),
        label: 'Appointment',
      ),

                        BottomNavigationBarItem(
                          icon: Icon(Icons.man),
                          label: 'Porfile',
                        ),
                      ],
                  )

                ],
              ),

            ),
          ),
        )
    );
  }
}

