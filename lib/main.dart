import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      title: 'EHO HABER',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 85,
                child: DrawerHeader(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Enes Başkaya'),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
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
      ),
    );
  }
}
