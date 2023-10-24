import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:loginpagedesign/auth/SignupScreen.dart';
import 'package:loginpagedesign/auth/doctor/doctor_dashbord.dart';
import 'package:loginpagedesign/auth/patient_login_screen.dart';
import 'package:loginpagedesign/patient_registration/appointment.dart';
import 'package:loginpagedesign/patient_registration/edit_profile_lifestyle.dart';
import 'package:loginpagedesign/patient_registration/edit_profile_medical.dart';
import 'package:loginpagedesign/patient_registration/edit_user_profile.dart';
import 'package:loginpagedesign/patient_registration/patient_dashboard.dart';

import 'package:loginpagedesign/screen/updated_homepage.dart';
import 'package:loginpagedesign/splash_screen.dart';

import 'auth/doctor/doctor_settings.dart';
import 'auth/doctor/edit_doctor_profile.dart';
import 'auth/doctor/password.dart';
import 'auth/doctor/privacy_policy.dart';
import 'auth/verify_code.dart';
import 'firebase_options.dart';

void main() async{
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final fcmToken = await FirebaseMessaging.instance.getToken();
  FirebaseMessaging.instance.onTokenRefresh
      .listen((fcmToken) {
    // TODO: If necessary send token to application server.

    // Note: This callback is fired at each app startup and whenever a new
    // token is generated.
  })
      .onError((err) {
    // Error getting token.
  });
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangePasswordForDoctor(),
    );
  }
}

