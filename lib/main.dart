import 'package:author_registration_app/views/screens/Homepage.dart';
import 'package:author_registration_app/views/screens/addbook_page.dart';
import 'package:author_registration_app/views/screens/splash_screen.dart';
import 'package:author_registration_app/views/screens/update_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Splash_Screen",
      routes: {
        "HomePage": (context) => const HomePage(),
        "Add_Book": (context) => const Add_Book(),
        "Update_Book": (context) => const Update_Book(),
        "Splash_Screen": (context) => const Splash_Screen(),
      },
    ),
  );
}