import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haber/constants/images.dart';
import 'package:haber/home/view/home_page_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
                onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePageView())),
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
