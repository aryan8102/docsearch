import 'package:flutter/material.dart';


class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
           padding: EdgeInsets.all(10),
           child: Column(
             children: [
               SizedBox(
                 height: 70,
               ),
               Center(child: Text('Privacy Policy', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
               SizedBox(
                 height: 20,
               ),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text('Privacy Policy for DocSearch',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
               SizedBox(
                 height: 20,
               ),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text('Effective Date: 25/10/23',style: TextStyle(color: Colors.white,fontSize: 22),)),
               SizedBox(
                 height: 20,
               ),
               Text('BY USING THE SERVICES OR BY OTHERWISE GIVING US YOUR INFORMATION, YOU WILL BE DEEMED TO HAVE READ, UNDERSTOOD AND AGREED TO THE PRACTICES AND POLICIES OUTLINED IN THIS PRIVACY POLICY AND AGREE TO BE BOUND BY THE PRIVACY POLICY. YOU HEREBY CONSENT TO OUR COLLECTION, USE AND SHARING, DISCLOSURE OF YOUR INFORMATION AS DESCRIBED IN THIS PRIVACY POLICY. WE RESERVE THE RIGHT TO CHANGE, MODIFY, ADD OR DELETE PORTIONS OF THE TERMS OF THIS PRIVACY POLICY, AT OUR SOLE DISCRETION, AT ANY TIME. IF YOU DO NOT AGREE WITH THIS PRIVACY POLICY AT ANY TIME, DO NOT USE ANY OF THE SERVICES OR GIVE US ANY OF YOUR INFORMATION. IF YOU USE THE SERVICES ON BEHALF OF SOMEONE ELSE (SUCH AS YOUR CHILD) OR AN ENTITY (SUCH AS YOUR EMPLOYER), YOU REPRESENT THAT YOU ARE AUTHORISED BY SUCH INDIVIDUAL OR ENTITY TO (I) ACCEPT THIS PRIVACY POLICY ON SUCH INDIVIDUAL’S OR ENTITY’S BEHALF, AND (II) CONSENT ON BEHALF OF SUCH INDIVIDUAL OR ENTITY TO OUR COLLECTION, USE AND DISCLOSURE OF SUCH INDIVIDUAL’S OR ENTITY’S INFORMATION AS DESCRIBED IN THIS PRIVACY POLICY',style: TextStyle(color: Colors.white,fontSize: 15),)
             ],
           ),
         ),
       ),
    );
  }
}
