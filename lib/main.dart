import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:haber/home/view/home_page_view.dart';
import 'package:haber/login/view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  User? _user = FirebaseAuth.instance.currentUser;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      title: 'Pixels News',
      home: _user != null ? HomePageView() : LoginView(),
    ),
  );
}
