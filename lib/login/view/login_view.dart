import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haber/constants/images.dart';
import 'package:haber/home/view/home_page_view.dart';
import 'package:haber/register/view/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bildLogoImage(),
              const SizedBox(height: 150),
              TextFormField(
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
                onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageView())),
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
    );
  }

  Image bildLogoImage() {
    return const Image(
      image: Images.whiteTextLogo,
      width: 300,
    );
  }
}
