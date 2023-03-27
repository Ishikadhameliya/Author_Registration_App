import 'package:author_registration_app/views/screens/Homepage.dart';
import 'package:author_registration_app/views/screens/addbook_page.dart';
import 'package:author_registration_app/views/screens/details-page.dart';
import 'package:author_registration_app/views/screens/editbook_page.dart';
import 'package:author_registration_app/views/screens/favourite_page.dart';
import 'package:author_registration_app/views/screens/splash_screen.dart';
import 'package:authors_app/views/screens/add_book.dart';
import 'package:authors_app/views/screens/detail_page.dart';
import 'package:authors_app/views/screens/edite_book.dart';
import 'package:authors_app/views/screens/favorite.dart';
import 'package:authors_app/views/screens/home.dart';
import 'package:authors_app/views/screens/splesh_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

// import 'firebase_options.dart';
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(
    MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: Colors.black, secondary: Colors.black)),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splesh_screen',
      routes: {
        '/': (context) => const Homepage(),
        'splash_screen': (context) => const SplashScreen(),
        'add_book': (context) => const add_book(),
        'favorite': (context) => const favorite(),
        'detail_page': (context) => const detail_page(),
        'edite_book': (context) => const edite_book(),

      },
    ),
  );
}