import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haber/constants/images.dart';
import 'package:haber/register/view-model/register_view_model.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  final _registerViewModel = RegisterViewModel();

  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: Images.whiteTextLogo,
                width: 300,
              ),
              const SizedBox(height: 150),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _registerViewModel.emailController,
                decoration: const InputDecoration(
                  label: Text("Email adresiniz"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                controller: _registerViewModel.passwordController,
                decoration: const InputDecoration(
                  label: Text("Parolanız"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () => _registerViewModel.userRegister(
                    email: _registerViewModel.emailController.text, password: _registerViewModel.passwordController.text, context: context),
                child: const Text(
                  "Kayıt Ol",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Kayıt Ol'),
      centerTitle: true,
    );
  }
}
