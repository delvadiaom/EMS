import 'package:event_management_system/views/bottom_nav_bar/bottom_bar_view.dart';
import 'package:event_management_system/views/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBq84PaVoX7iEN6jzxJTHUstLqqN9iASB0",
        authDomain: "ems-app-21123.firebaseapp.com",
        projectId: "ems-app-21123",
        storageBucket: "ems-app-21123.appspot.com",
        messagingSenderId: "930053011947",
        appId: "1:930053011947:web:7314f5aaf90c0a455141ae",
        measurementId: "G-4Q6MSEWQC2"
    ),
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Flutter Demo',
      home: FirebaseAuth.instance.currentUser?.uid == null ? const OnBoardingScreen() : BottomBarView(),
    );
  }
}
