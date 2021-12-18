import 'dart:convert';

import 'package:flutter/material.dart';
import '../model/currency.dart';
import '../model/news.dart';
import '../model/weather.dart';
import '../../login/view/login_view.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'home_page_view_model.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @action
  String? getCurrentUser() {
    String? userName = FirebaseAuth.instance.currentUser != null ? FirebaseAuth.instance.currentUser!.email : '';
    return userName;
  }

  @action
  Future userSigningOut({BuildContext? context}) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(context!, MaterialPageRoute(builder: (context) => LoginView()));
  }

  @action
  Future<List<Currency>> getCurrency() async {
    List<Currency> w = [];
    Response response = await get(
      Uri.parse('https://api.genelpara.com/embed/para-birimleri.json'),
    );
    try {
      // Map l = json.decode(response.body);
      // for (var map in l.keys) {
      //   w.add(Currency.fromMap(l[map]));
      // }
      return w;
    } catch (e) {
      debugPrint(e.toString());
      return w;
    }
  }

  @action
  Future<Weather?> getWeather() async {
    List<Weather> w = [];
    Response response = await get(
      Uri.parse('https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=sakarya'),
      headers: {
        "content-type": "application/json",
        "authorization": "apikey 6WoaWIEu5rfwTdKyYu3M3O:2qCPHjyHeqpDPYkgL8IXsY",
      },
    );
    try {
      List l = json.decode(response.body)['result'];
      for (var map in l) {
        w.add(Weather.fromMap(map));
      }
      return w.first;
    } catch (e) {
      debugPrint(e.toString());
      return w.first;
    }
  }

  @action
  Future<List<News>> getNews() async {
    List<News> w = [];
    Response response = await get(
      Uri.parse('https://api.collectapi.com/news/getNews?country=tr&tag=general'),
      headers: {
        "content-type": "application/json",
        "authorization": "apikey 6WoaWIEu5rfwTdKyYu3M3O:2qCPHjyHeqpDPYkgL8IXsY",
      },
    );

    try {
      List l = json.decode(response.body)['result'];
      for (var map in l) {
        w.add(News.fromMap(map));
      }
      return w;
    } catch (e) {
      debugPrint(e.toString());
      return w;
    }
  }
}
