import 'package:flutter/material.dart';
import 'package:haber/constants/images.dart';
import 'package:haber/login/login_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView())),
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
            ListTile(
              title: const Text('Dolar'),
              trailing: Wrap(
                spacing: 12,
                children: const [
                  Text('12,413'),
                  Text('13,413'),
                ],
              ),
            ),
            ListTile(
              title: const Text('Altın'),
              trailing: Wrap(
                spacing: 12,
                children: const [
                  Text('452,235'),
                  Text('485,236'),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Image(
          image: Images.whiteTextLogo,
          height: 30,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Column(
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
                                Center(
                                  child: const Text(
                                      "Tüm Apple ürünleri zamlandı! bu fiyatlara kalp dayanmaz..."),
                                ),
                                Row(
                                  children: [
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
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
