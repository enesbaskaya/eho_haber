import 'package:flutter/material.dart';
import 'package:haber/constants/images.dart';
import 'package:haber/login/view/login_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawerMenu(context),
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Column(
              children: [
                for (var i = 0; i < 10; i++) buildNewsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildNewsCard() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 140,
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Center(
                        child: Text("Tüm Apple ürünleri zamlandı! bu fiyatlara kalp dayanmaz..."),
                      ),
                      Row(
                        children: const [
                          Text("9 saat önce paylaşıldı"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("*Teknoloji"),
                        ],
                      )
                    ],
                  ),
                ),
                const Image(
                  height: 124,
                  width: 160,
                  image: Images.imagePhone,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Image(
        image: Images.whiteTextLogo,
        height: 30,
      ),
    );
  }

  Drawer buildDrawerMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 85,
            child: DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Enes Başkaya'),
                IconButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView())),
                  icon: const Icon(
                    Icons.exit_to_app,
                  ),
                )
              ],
            )),
          ),
          ListTile(
            title: const Text(''),
            trailing: Wrap(
              spacing: 12,
              children: const [
                Text('Alış'),
                Text('Satış'),
              ],
            ),
          ),
          for (var i = 0; i <= 2; i++)
            ListTile(
              title: const Text('Euro'),
              trailing: Wrap(
                spacing: 12,
                children: const [
                  Text('15,413'),
                  Text('15,413'),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
