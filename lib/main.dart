import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/firebase_options.dart';
import 'package:flutter_application_1/screens/home_page.dart';

void main() async {
  runApp(MaterialApp(home: HomePage()));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
