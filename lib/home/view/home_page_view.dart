import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/images.dart';
import '../model/currency.dart';
import '../model/news.dart';
import '../model/weather.dart';
import '../view-model/home_page_view_model.dart';

class HomePageView extends StatelessWidget {
  HomePageView({Key? key}) : super(key: key);

  final _homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawerMenu(context),
      appBar: buildAppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: _homePageViewModel.getNews(),
          builder: (BuildContext c, AsyncSnapshot s) {
            if (!s.hasData) return const Center(child: CircularProgressIndicator());
            List<News> data = s.data;
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return buildNewsCard(data[index]);
                });
          },
        ),
      ),
    );
  }

  Container buildNewsCard(News data) {
    return Container(
      width: double.infinity,
      height: 140,
      color: Colors.white10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data.name!.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text("*Genel"),
                ],
              ),
            ),
            Image(
              height: 124,
              width: 160,
              image: NetworkImage(data.image!),
            ),
          ],
        ),
      ),
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
      child: Column(
        children: [
          SizedBox(
            height: 85,
            child: DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_homePageViewModel.getCurrentUser() ?? ''),
                IconButton(
                  onPressed: () => _homePageViewModel.userSigningOut(context: context),
                  icon: const Icon(
                    Icons.exit_to_app,
                  ),
                )
              ],
            )),
          ),
          Container(
            height: 120,
            width: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.white, Colors.blueAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: FutureBuilder(
              future: _homePageViewModel.getWeather(),
              builder: (BuildContext c, AsyncSnapshot s) {
                if (!s.hasData) return const Center(child: CircularProgressIndicator());
                Weather homeList = s.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sakarya',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      homeList.degree!.toStringAsFixed(0) + '°',
                      style: const TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    Text(
                      homeList.description.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      homeList.day.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                );
              },
            ),
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
          Expanded(
            child: FutureBuilder(
              future: _homePageViewModel.getCurrency(),
              builder: (BuildContext c, AsyncSnapshot s) {
                if (!s.hasData) return const Center(child: CircularProgressIndicator());
                List<Currency> homeList = s.data;
                return ListView.builder(
                    itemCount: homeList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(homeList[index].isim.toString()),
                        trailing: Wrap(
                          spacing: 12,
                          children: [
                            Text(homeList[index].alis.toString()),
                            Text(homeList[index].satis.toString()),
                          ],
                        ),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
