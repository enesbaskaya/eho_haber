import 'package:flutter/material.dart';
import 'package:haber/login/view/login_view.dart';
import 'package:mobx/mobx.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'home_page_view_model.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @action
  String? getCurrentUser() {
    String? userName = FirebaseAuth.instance.currentUser != null ? FirebaseAuth.instance.currentUser!.email : '';
    return userName;
  }

  @action
  Future userSigningOut({BuildContext? context}) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(context!, MaterialPageRoute(builder: (context) => LoginView()));
  }
}
