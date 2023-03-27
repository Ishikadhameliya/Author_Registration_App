import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../res/helpers/firebase_auth_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cal();
  }

  add() async {
    User? user = await FirebaseAuthHelper.firebaseAuthHelper.currentUser();

    user?.uid;
    if (user?.uid == "h9laiHfTPuXWqwz99IITTD51Z0l2") {
      return true;
    } else {
      return false;
    }
  }

  cal() async {
    await Future.delayed(Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 50),
              Image.asset("assets/images/1995562.png", height: 200),
              Text(
                "   Author App",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 50),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              CircularProgressIndicator(color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}