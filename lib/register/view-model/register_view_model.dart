import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../home/view/home_page_view.dart';

part 'register_view_model.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store {
  @observable
  TextEditingController emailController = TextEditingController();
  @observable
  TextEditingController passwordController = TextEditingController();

  @action
  Future userRegister({String? email, String? password, BuildContext? context}) async {
    try {
      if (password!.length < 6) {
        ScaffoldMessenger.of(context!).showSnackBar(const SnackBar(content: Text('Şifreniz en az 6 haneli olmalı!!!')));
        return;
      }
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password);
      Navigator.pushReplacement(context!, MaterialPageRoute(builder: (context) => HomePageView()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
