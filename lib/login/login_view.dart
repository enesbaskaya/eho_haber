import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haber/home_page.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "EHO HABER",
                style: TextStyle(fontSize: 45),
              ),
              const SizedBox(height: 150),
              const Text(
                "Giriş Yap",
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Email adresiniz"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Parolanız"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: null,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Kayıtlı değil misin?"),
                  TextButton(
                    child: const Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Colors.red),
                    ),
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
