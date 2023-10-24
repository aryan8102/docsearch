
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


import '../screen/updated_homepage.dart';
import '../utils/utils.dart';
import '../widget/round_button.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String verificartionId;
  const VerifyCodeScreen({Key? key, required this.verificartionId}):super(key: key);

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  bool loading = false;
  final verificationCodeController = TextEditingController();
  final auth = FirebaseAuth.instance;

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
          children: [
            SizedBox(
              height: 50,
            ),

            TextFormField(
              controller: verificationCodeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '6 digit code ',
              ),
            ),
            SizedBox(height: 30,),
            RoundButton(

                title: 'Verify', loading: loading, onTap: () async {
              setState(() {
                loading = true;
              });

              final crendital = PhoneAuthProvider.credential(
                  verificationId: widget.verificartionId,
                  smsCode: verificationCodeController.text.toString());

              try {
                await auth.signInWithCredential(crendital);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homePage()));
              } catch (e) {
                setState(() {
                  loading = true;
                });
                utils().toastMessage(e.toString());
              }
            }
            )

          ],
        ),
      ),
    );
  }
}
