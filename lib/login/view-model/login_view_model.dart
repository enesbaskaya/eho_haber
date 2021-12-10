import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../home/view/home_page_view.dart';
import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  TextEditingController emailController = TextEditingController();
  @observable
  TextEditingController passwordController = TextEditingController();

  Future userLogin({String? email, String? password, BuildContext? context}) async {
    try {
      if (password!.length < 6) ScaffoldMessenger.of(context!).showSnackBar(const SnackBar(content: Text('Şifreniz en az 6 haneli olmalı!!!')));
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password);
      Navigator.pushReplacement(context!, MaterialPageRoute(builder: (context) => HomePageView()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
      }
    }
  }
}
