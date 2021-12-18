import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/images.dart';
import '../view-model/login_view_model.dart';
import '../../register/view/register_view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final _loginviewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bildLogoImage(),
                const SizedBox(height: 150),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _loginviewModel.emailController,
                  decoration: const InputDecoration(
                    label: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Email adresiniz"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _loginviewModel.passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Parolanız"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () => _loginviewModel.userLogin(
                      email: _loginviewModel.emailController.text, password: _loginviewModel.passwordController.text, context: context),
                  child: const Text(
                    "Giriş Yap",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Kayıtlı değil misin?"),
                    TextButton(
                      child: const Text(
                        "Kayıt Ol",
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterView())),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Image bildLogoImage() {
    return const Image(
      image: Images.whiteTextLogo,
      width: 300,
    );
  }
}
