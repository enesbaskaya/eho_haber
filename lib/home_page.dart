import 'package:flutter/material.dart';
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
                      ))
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
        title: const Text('EHO Haber'),
      ),
      body: const Center(
        child: Text('EHO HABER'),
      ),
    );
  }
}
